require 'rails_view_benchmarks/instances/dsl_style/partial_hell'
require 'rails_view_benchmarks/instances/erector_base/common'

module RailsViewBenchmarks
  module Instances
    module ErectorBase
      class PartialHell < ::RailsViewBenchmarks::Instances::DslStyle::PartialHell
        include ::RailsViewBenchmarks::Instances::ErectorBase::Common
      end
    end
  end
end
