require 'rails_view_benchmarks/instances/base'

module RailsViewBenchmarks
  module Instances
    module Slim
      class PlacePage < ::RailsViewBenchmarks::Instances::Base
        def configure!(c)
          c.copy(c.view_controller_path, 'instances/slim/place_page')
        end
      end
    end
  end
end
