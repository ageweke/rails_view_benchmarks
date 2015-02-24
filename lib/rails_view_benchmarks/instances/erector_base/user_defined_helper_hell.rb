require 'rails_view_benchmarks/instances/base'
require 'rails_view_benchmarks/instances/erector_base/common'
require 'rails_view_benchmarks/instances/dsl_style/user_defined_helper_hell'

module RailsViewBenchmarks
  module Instances
    module ErectorBase
      class UserDefinedHelperHell < ::RailsViewBenchmarks::Instances::DslStyle::UserDefinedHelperHell
        include ::RailsViewBenchmarks::Instances::ErectorBase::Common
      end
    end
  end
end
