require 'rails_view_benchmarks/instances/dsl_style/slim_benchmark'
require 'rails_view_benchmarks/instances/fortitude/common'

module RailsViewBenchmarks
  module Instances
    module Fortitude
      class SlimBenchmark < ::RailsViewBenchmarks::Instances::DslStyle::SlimBenchmark
        include ::RailsViewBenchmarks::Instances::Fortitude::Common
      end
    end
  end
end
