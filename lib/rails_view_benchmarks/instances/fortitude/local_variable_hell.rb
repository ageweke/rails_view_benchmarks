require 'rails_view_benchmarks/instances/dsl_style/local_variable_hell'
require 'rails_view_benchmarks/instances/fortitude/common'

module RailsViewBenchmarks
  module Instances
    module Fortitude
      class LocalVariableHell < ::RailsViewBenchmarks::Instances::DslStyle::LocalVariableHell
        include ::RailsViewBenchmarks::Instances::Fortitude::Common
      end
    end
  end
end
