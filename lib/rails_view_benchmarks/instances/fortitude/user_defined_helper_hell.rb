require 'rails_view_benchmarks/instances/dsl_style/user_defined_helper_hell'
require 'rails_view_benchmarks/instances/fortitude/common'

module RailsViewBenchmarks
  module Instances
    module Fortitude
      class UserDefinedHelperHell < ::RailsViewBenchmarks::Instances::DslStyle::UserDefinedHelperHell
        include ::RailsViewBenchmarks::Instances::Fortitude::Common
      end
    end
  end
end
