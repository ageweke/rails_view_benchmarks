require 'rails_view_benchmarks/instances/base'

module RailsViewBenchmarks
  module Instances
    module Abstract
      class PartialHell < ::RailsViewBenchmarks::Instances::Base
        def configure!(c)
          depth = benchmark.depth

          splat_main_view!(c, depth)

          (1..(depth - 1)).each do |d|
            splat_intermediate_partial!(c, d)
          end

          splat_final_partial!(c, depth)
        end
      end
    end
  end
end
