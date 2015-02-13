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

    def initialize(all_servers_base, rails_version, templating_engine, benchmark)
      @all_servers_base = all_servers_base
      @rails_version = rails_version
      @templating_engine = templating_engine
      @benchmark = benchmark
      @instance = ::RailsViewBenchmarks::Instances::Base.get(templating_engine, benchmark)
    end

    def configure!
      @configured ||= begin
        @rails_server ||= ::OopRailsServer::RailsServer.new(
          :name => 'benchmarker', :template_paths => [ ], :runtime_base_directory => runtime_base_directory,
          :rails_version => rails_version, :rails_env => :production,
          :additional_gemfile_lines => templating_engine.additional_gemfile_lines)
        @rails_server.setup!

        run_configurators!(@rails_server)
      end
    end

    def start!
      configure!
      @rails_server.start!
    end

    private
    attr_reader :all_servers_base, :rails_version, :templating_engine, :benchmark, :instance

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
      overall_configurator.rails_root_file 'config', 'routes.rb', <<-EOS
app_class = "\#{File.basename(Rails.root).camelize}::Application".constantize
app_class.routes.draw do
  get ':controller/:action'
  get '/#{templating_engine.subpath}/#{benchmark.subpath}/:action', :controller => :#{CONTROLLER_NAME}
end
EOS

      overall_configurator.rails_root_file 'app', 'controllers', "#{CONTROLLER_NAME}_controller_base.rb", <<-EOS
class ::#{CONTROLLER_NAME.camelize}ControllerBase < ApplicationController

end
EOS
    end
  end
end
