require 'rails_view_benchmarks/templating_engines/base'

module RailsViewBenchmarks
  module TemplatingEngines
    class Erb < ::RailsViewBenchmarks::TemplatingEngines::Base
      def additional_gemfile_lines
        [ ]
      end
    end
  end
end
