require 'rails_view_benchmarks/instances/dsl_style/siannopollo'
require 'rails_view_benchmarks/instances/erector_base/common'

module RailsViewBenchmarks
  module Instances
    module ErectorBase
      class Siannopollo < ::RailsViewBenchmarks::Instances::DslStyle::Siannopollo
        include ::RailsViewBenchmarks::Instances::ErectorBase::Common
      end
    end
  end
end
