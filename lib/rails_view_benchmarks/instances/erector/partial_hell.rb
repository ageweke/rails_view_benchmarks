require 'rails_view_benchmarks/instances/erector_base/partial_hell'

module RailsViewBenchmarks
  module Instances
    module Erector
      class PartialHell < ::RailsViewBenchmarks::Instances::ErectorBase::PartialHell
        def uses_instance_variables?
          true
        end
      end
    end
  end
end
