module RailsViewBenchmarks
  module Generators
    class GenerationContext
      def initialize(templating_engine, benchmark, rails_root)
        @templating_engine = templating_engine
        @benchmark = benchmark
        @rails_root = File.expand_path(rails_root)
      end

      def generator_class_name
        root_module = self.class.name.deconstantize
        "#{root_module}::#{templating_engine.generator_constant_name}::#{benchmark.generator_constant_name}"
      end

      def rails_root_path
        rails_root
      end

      def app_views_path
        @app_views_path ||= File.join(rails_root, 'app', 'views')
      end

      def benchmark_views_path
        @benchmark_views_path ||= File.join(app_views_path, 'rails_view_benchmark', templating_engine.subpath, benchmark.subpath)
      end

      def view_file_extension
        templating_engine.view_file_extension
      end

      private
      attr_reader :templating_engine, :benchmark ,:rails_root
    end
  end
end
