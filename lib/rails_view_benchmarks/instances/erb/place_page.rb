require 'rails_view_benchmarks/instances/base'

module RailsViewBenchmarks
  module Instances
    module Erb
      class PlacePage < ::RailsViewBenchmarks::Instances::Base
        def configure!(c)
          c.copy(c.view_controller_path, 'instances/erb/place_page')
        end
      end
    end
  end
end
