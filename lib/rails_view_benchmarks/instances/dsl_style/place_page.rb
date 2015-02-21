require 'rails_view_benchmarks/instances/base'
require 'rails_view_benchmarks/instances/dsl_style/common'

module RailsViewBenchmarks
  module Instances
    module DslStyle
      class PlacePage < ::RailsViewBenchmarks::Instances::Base
        include ::RailsViewBenchmarks::Instances::DslStyle::Common

        def configure!(c)
          c.copy(c.view_controller_path, 'instances/dsl_style/place_page')
        end
      end
    end
  end
end
