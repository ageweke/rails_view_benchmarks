require 'rails_view_benchmarks/templating_engines/base'

module RailsViewBenchmarks
  module TemplatingEngines
    class Erb < ::RailsViewBenchmarks::TemplatingEngines::Base
      def configure!(c)
        # nothing here
      end

      def view_file_extension
        '.html.erb'
      end

      def gem_name
        'erubis'
      end
    end
  end
end
