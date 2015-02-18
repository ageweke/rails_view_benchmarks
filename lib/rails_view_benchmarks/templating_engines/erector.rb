require 'rails_view_benchmarks/templating_engines/erector_base'

module RailsViewBenchmarks
  module TemplatingEngines
    class Erector < ::RailsViewBenchmarks::TemplatingEngines::ErectorBase
      def additional_gemfile_lines
        [ "gem 'erector'" ]
      end
    end
  end
end
