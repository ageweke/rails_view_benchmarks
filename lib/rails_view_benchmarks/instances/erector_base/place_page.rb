require 'rails_view_benchmarks/instances/dsl_style/place_page'
require 'rails_view_benchmarks/instances/erector_base/common'

module RailsViewBenchmarks
  module Instances
    module ErectorBase
      class PlacePage < ::RailsViewBenchmarks::Instances::DslStyle::PlacePage
        include ::RailsViewBenchmarks::Instances::ErectorBase::Common

        def configure!(c)
          c.copy(c.view_controller_path, 'instances/erector/place_page')
        end
      end
    end
  end
end
