require 'rails_view_benchmarks/configurators/overall_configurator'
require 'rails_view_benchmarks/configurators/templating_engine_configurator'
require 'rails_view_benchmarks/configurators/benchmark_configurator'
require 'rails_view_benchmarks/configurators/instance_configurator'
require 'rails_view_benchmarks/instances/base'

require 'oop_rails_server'

require 'active_support/core_ext/string'

module RailsViewBenchmarks
  class ConfiguredRailsServer
    CONTROLLER_NAME = "benchmark"

    def initialize(all_servers_base, rails_version, templating_engine, benchmark, run_options)
      @all_servers_base = all_servers_base
      @rails_version = rails_version
      @templating_engine = templating_engine
      @benchmark = benchmark
      @instance = ::RailsViewBenchmarks::Instances::Base.get(templating_engine, benchmark)
      @run_options = run_options
    end

    def configure!
      @configured ||= begin
        @rails_server ||= ::OopRailsServer::RailsServer.new(
          :name => 'benchmarker', :template_paths => [ ], :runtime_base_directory => runtime_base_directory,
          :rails_version => rails_version, :rails_env => :production,
          :gemfile_modifier => templating_engine.gemfile_modifier,
          :verbose => false)
        @rails_server.setup!

        run_configurators!(@rails_server)
      end
    end

    def start!
      configure!
      @rails_server.start!
    end

    def stop!
      @rails_server.stop!
    end

    def rendered_html
      get_benchmark_action("rendered_html")
    end

    def benchmark_time
      get_json('benchmark_time')
    end

    def benchmark_memory
      get_json('benchmark_memory')
    end

    def actual_ruby_version
      @rails_server.actual_ruby_version
    end

    def actual_rails_version
      @rails_server.actual_rails_version
    end

    def actual_ruby_engine
      @rails_server.actual_ruby_engine
    end

    private
    attr_reader :all_servers_base, :rails_version, :templating_engine, :benchmark, :instance

    def get_json(action)
      json = get_benchmark_action(action)
      if json['exception']
        raise "Benchmark action '#{action}' failed; got:\n#{json}"
      end

      JSON.load(json)
    end

    def runtime_base_directory
      @runtime_base_directory ||= begin
        out = File.join(all_servers_base, benchmark.subpath, templating_engine.subpath)
        FileUtils.mkdir_p(out)
        out
      end
    end

    def run_configurators!(rails_server)
      overall_configurator = ::RailsViewBenchmarks::Configurators::OverallConfigurator.new(rails_server.rails_root)
      configure_overall!(overall_configurator)

      templating_engine_configurator = ::RailsViewBenchmarks::Configurators::TemplatingEngineConfigurator.new(rails_server.rails_root, templating_engine)
      templating_engine.configure!(templating_engine_configurator)

      benchmark_configurator = ::RailsViewBenchmarks::Configurators::BenchmarkConfigurator.new(rails_server.rails_root, benchmark)
      benchmark.configure!(benchmark_configurator)

      instance_configurator = ::RailsViewBenchmarks::Configurators::InstanceConfigurator.new(rails_server.rails_root, templating_engine, benchmark)
      instance.configure!(instance_configurator)
    end

    def configure_overall!(overall_configurator)
      oc = overall_configurator
      erb_hash = { :templating_engine => templating_engine, :benchmark => benchmark, :controller_name => CONTROLLER_NAME }

      oc.copy(oc.rails_root_path('config', 'routes.rb'), 'configured_rails_server/config/routes.rb', :erb => erb_hash)
      oc.copy(oc.rails_root_path('app', 'controllers', "#{CONTROLLER_NAME}_controller_base.rb"), 'configured_rails_server/app/controllers/controller_base.rb', :erb => erb_hash)
      oc.copy(oc.rails_root_path('config', 'initializers', 'double_render.rb'), 'configured_rails_server/config/initializers/double_render.rb', :erb => erb_hash)
    end

    def query_parameters
      @run_options.to_query_parameters
    end

    def get_benchmark_action(action)
      url = "#{templating_engine.subpath}/#{benchmark.subpath}/#{action}"
      @rails_server.get(url, :query => query_parameters)
    end
  end
end
