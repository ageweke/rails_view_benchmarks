require 'rails_view_benchmarks/instances/dsl_style/partial_hell'

module RailsViewBenchmarks
  module Instances
    module Erector
      class PartialHell < ::RailsViewBenchmarks::Instances::DslStyle::PartialHell
        def uses_instance_variables?
          true
        end
      end
    end
  end
end
