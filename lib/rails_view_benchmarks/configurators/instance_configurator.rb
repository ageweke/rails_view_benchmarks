require 'rails_view_benchmarks/configurators/base'

require 'rails_view_benchmarks/configured_rails_server'

module RailsViewBenchmarks
  module Configurators
    class InstanceConfigurator < ::RailsViewBenchmarks::Configurators::Base
      def initialize(rails_root, templating_engine, benchmark)
        super(rails_root)
        @templating_engine = templating_engine
        @benchmark = benchmark
      end

      def app_views_view(*args)
        view_file(app_views_path, *args)
      end

      def view(*args)
        view_file(view_controller_path, *args)
      end

      def main_view(contents)
        view(:index, contents)
      end

      def view_file(*args)
        file(*add_extension(templating_engine.view_file_extension, *args))
      end

      private
      attr_reader :templating_engine, :benchmark

      def view_controller_path(*args)
        app_views_path(::RailsViewBenchmarks::ConfiguredRailsServer::CONTROLLER_NAME, *args)
      end

      def view_name
        benchmark.subpath
      end
    end
  end
end
