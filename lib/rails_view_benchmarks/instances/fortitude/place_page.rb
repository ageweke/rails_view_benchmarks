require 'rails_view_benchmarks/instances/dsl_style/place_page'
require 'rails_view_benchmarks/instances/fortitude/common'

module RailsViewBenchmarks
  module Instances
    module Fortitude
      class PlacePage < ::RailsViewBenchmarks::Instances::DslStyle::PlacePage
        include ::RailsViewBenchmarks::Instances::Fortitude::Common

        def configure!(c)
          c.copy(c.view_controller_path, 'instances/fortitude/place_page')
        end
      end
    end
  end
end
