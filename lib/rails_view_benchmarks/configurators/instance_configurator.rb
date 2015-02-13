require 'rails_view_benchmarks/configurators/base'

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
        view_file(view_name, *args)
      end

      def main_view(contents)
        view(:index, contents)
      end

      def view_file(*args)
        file(*add_extension(templating_engine.view_file_extension, *args))
      end

      private
      attr_reader :templating_engine, :benchmark

      def view_name
        benchmark.subpath
      end
    end
  end
end
