require 'rails_view_benchmarks/instances/dsl_style/slim_benchmark'
require 'rails_view_benchmarks/instances/erector_base/common'

module RailsViewBenchmarks
  module Instances
    module ErectorBase
      class SlimBenchmark < ::RailsViewBenchmarks::Instances::DslStyle::SlimBenchmark
        include ::RailsViewBenchmarks::Instances::ErectorBase::Common
      end
    end
  end
end
