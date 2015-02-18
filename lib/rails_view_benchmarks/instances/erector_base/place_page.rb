require 'rails_view_benchmarks/instances/dsl_style/place_page'

module RailsViewBenchmarks
  module Instances
    module ErectorBase
      class PlacePage < ::RailsViewBenchmarks::Instances::DslStyle::PlacePage
        def configure!(c)
          c.copy(c.view_controller_path, 'instances/erector/place_page')
        end
      end
    end
  end
end
