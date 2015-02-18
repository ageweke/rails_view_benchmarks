require 'rails_view_benchmarks/templating_engines/base'

module RailsViewBenchmarks
  module TemplatingEngines
    class Haml < ::RailsViewBenchmarks::TemplatingEngines::Base
      def configure!(c)
        # nothing here yet
      end

      def view_file_extension
        '.html.haml'
      end

      def additional_gemfile_lines
        [ "gem 'haml'" ]
      end
    end
  end
end
