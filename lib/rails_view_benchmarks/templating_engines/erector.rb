require 'rails_view_benchmarks/templating_engines/erector_base'

module RailsViewBenchmarks
  module TemplatingEngines
    class Erector < ::RailsViewBenchmarks::TemplatingEngines::ErectorBase
      def gem_name
        "erector"
      end
    end
  end
end
