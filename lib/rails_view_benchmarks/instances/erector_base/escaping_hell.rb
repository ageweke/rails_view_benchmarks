require 'rails_view_benchmarks/instances/base'
require 'rails_view_benchmarks/instances/erector_base/common'

module RailsViewBenchmarks
  module Instances
    module ErectorBase
      class EscapingHell < ::RailsViewBenchmarks::Instances::DslStyle::EscapingHell
        include ::RailsViewBenchmarks::Instances::ErectorBase::Common
      end
    end
  end
end
