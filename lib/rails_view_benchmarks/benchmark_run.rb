require 'active_support/core_ext/hash/keys'

require 'rails_view_benchmarks/configured_rails_server'
require 'rails_view_benchmarks/run_options'
require 'rails_view_benchmarks/benchmark_alias'
require 'rails_view_benchmarks/engine_alias'
require 'rails_view_benchmarks/instance_results'
require 'rails_view_benchmarks/version'
require 'rails_view_benchmarks/csv_output_file'

require 'csv'
require 'yaml'
require 'sys/cpu'

module RailsViewBenchmarks
  class BenchmarkRun
    def initialize(yaml_file, temp_directory, options = { })
      options.assert_valid_keys(:verbose)

      @yaml_file = yaml_file
      @temp_directory = temp_directory
      @verbose = !! options[:verbose]

      @run_options = nil
      @benchmark_aliases = nil
      @engine_aliases = nil

      @started_at = nil
      @ended_at = nil
      @instance_results = [ ]
    end

    def run!
      @started_at = Time.now
      load_from_file!

      say "RAILS VIEW BENCHMARKS RUN STARTING"
      say "Options: #{@run_options}"
      say ""

      for_all_benchmark_aliases do |benchmark_alias|
        for_all_engine_aliases("     ...", false) do |engine_alias|
          run_for!(benchmark_alias, engine_alias)
        end
      end

      @ended_at = Time.now
    end

    def save_html_to!(dest_directory)
      @instance_results.each do |instance_results|
        instance_results.save_rendered_html_under!(dest_directory)
      end
    end

    class << self
      def csv_header
        [
          [ "RailsViewBenchmarks Benchmark Run" ],
          [ "Version", "Started At", "Ended At" ]
        ]
      end
    end

    def to_csv
      [
        [ ::RailsViewBenchmarks::Version::VERSION, started_at.strftime(CSV_TIME_FORMAT), ended_at.strftime(CSV_TIME_FORMAT) ]
      ]
    end

    def save_csv_to!(dest_file)
      output_file = ::RailsViewBenchmarks::CsvOutputFile.new(dest_file)
      output_file.open do |f|
        f.write self.class.csv_header
        f.write self.to_csv

        f.write empty_csv_row
        f.write [ [ "System Information" ] ]
        f.write cpu_info_csv

        f.write empty_csv_row
        f.write ::RailsViewBenchmarks::RunOptions.csv_header
        f.write run_options.to_csv

        f.write empty_csv_row
        f.write [ [ "Benchmarks" ] ]
        f.write ::RailsViewBenchmarks::BenchmarkAlias.csv_header
        benchmark_aliases.select { |ba| ba.enabled? }.each { |ba| f.write ba.to_csv }

        f.write empty_csv_row
        f.write [ [ "Engines" ] ]
        f.write ::RailsViewBenchmarks::EngineAlias.csv_header
        engine_aliases.select { |ea| ea.enabled? }.each { |ea| f.write ea.to_csv }

        f.write empty_csv_row
        f.write [ [ "Results" ] ]
        f.write ::RailsViewBenchmarks::InstanceResults.csv_header
        benchmark_aliases.each do |benchmark_alias|
          engine_aliases.each do |engine_alias|
            ir = instance_results.detect do |ir|
              ir.benchmark_alias_name == benchmark_alias.name &&
                ir.engine_alias_name == engine_alias.name
            end

            f.write ir.to_csv if ir
          end
        end
      end
    end

    private
    attr_reader :yaml_file, :temp_directory, :verbose, :run_options, :benchmark_aliases, :engine_aliases
    attr_reader :started_at, :ended_at, :instance_results

    CSV_TIME_FORMAT = "%Y-%m-%d %H:%M:%S"

    def empty_csv_row
      [ [ ] ]
    end

    def say(s, newline = true)
      if newline
        $stderr.puts s
      else
        $stderr << s
      end

      $stderr.flush
    end

    def say_verbose(s, newline = true)
      return unless @verbose

      if newline
        $stderr.puts s
      else
        $stderr << s
      end

      $stderr.flush
    end

    def for_all_benchmark_aliases(indent = "", newline = true)
      benchmark_aliases.each do |benchmark_alias|
        if benchmark_alias.enabled?
          say "#{indent}BENCHMARK #{benchmark_alias.name}: ", newline
          yield benchmark_alias
        else
          say "#{indent}     skip #{benchmark_alias.name}"
        end
      end
    end

    def for_all_engine_aliases(indent = "", newline = true)
      engine_aliases.each do |engine_alias|
        if engine_alias.enabled?
          say "#{indent}ENGINE #{engine_alias.name}: ", newline
          yield engine_alias
        else
          say "#{indent}  skip #{engine_alias.name}"
        end
      end
    end

    def load_from_file!
      yaml_hash = YAML.load_file(@yaml_file)

      run_options_yaml = yaml_hash['run_options'] || raise("You must supply a 'run_options' section of your YAML file.")
      @run_options = ::RailsViewBenchmarks::RunOptions.from_yaml(run_options_yaml)

      benchmark_hashes = yaml_hash['benchmarks'] || raise("You must supply a 'benchmarks' section of your YAML file.")
      raise "Your 'benchmarks' YAML key must be an Array, not: #{benchmark_hashes.inspect}" unless benchmark_hashes.kind_of?(Array)
      @benchmark_aliases = benchmark_hashes.map do |benchmark_hash|
        raise "Your benchmark must be a Hash, not: #{benchmark_hash.inspect}" unless benchmark_hash.kind_of?(Hash)
        ::RailsViewBenchmarks::BenchmarkAlias.new(benchmark_hash)
      end

      engine_hashes = yaml_hash['engines'] || raise("You must supply an 'engines' section of your YAML file.")
      raise "Your 'engines' YAML key must be an Array, not: #{engine_hashes.inspect}" unless engine_hashes.kind_of?(Array)
      @engine_aliases = engine_hashes.map do |engine_hash|
        raise "Your engine must be a Hash, not #{engine_hash.inspect}" unless engine_hash.kind_of?(Hash)
        ::RailsViewBenchmarks::EngineAlias.new(engine_hash)
      end
    end

    def run_for!(benchmark_alias, engine_alias)
      benchmark = benchmark_alias.benchmark
      engine = engine_alias.engine

      say_verbose "[configure]", false
      crs = ::RailsViewBenchmarks::ConfiguredRailsServer.new(@temp_directory, nil, engine_alias.engine, benchmark_alias.benchmark, @run_options)
      crs.configure!
      say_verbose "[start]", false
      crs.start!

      instance_results = ::RailsViewBenchmarks::InstanceResults.new(benchmark_alias, engine_alias)
      @instance_results << instance_results

      begin
        say_verbose "[html]", false
        instance_results.rendered_html = crs.rendered_html

        if @run_options.run_memory?
          say_verbose "[time]", false
          instance_results.memory_results = crs.benchmark_memory
        end

        if @run_options.run_time?
          say_verbose "[memory]", false
          instance_results.time_results = crs.benchmark_time
        end
      ensure
        say_verbose "[stop]", false
        crs.stop!
      end

      say_verbose "[done]", false
      say instance_results
    end

    def cpu_info_csv
      header = [ "CPU Architecture", "CPU Count", "CPU Model", "CPU MHz", "Load Average" ]
      methods_list = [
        [ :architecture ],
        [ :processors, :num_cpu ],
        [ :model_name, :model ],
        [ :freq, :cpu_mhz ],
        [ :load_avg ]
      ]

      body = methods_list.map do |methods|
        result = nil
        methods.each do |method|
          begin
            result ||= Sys::CPU.send(method) if Sys::CPU.respond_to?(method)
          rescue
            nil
          end
        end
        result || "Unknown"
      end

      [ header, body ]
    end
  end
end
