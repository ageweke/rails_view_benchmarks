require 'rails_view_benchmarks/instances/base'
require 'rails_view_benchmarks/instances/erector_base/common'
require 'rails_view_benchmarks/instances/dsl_style/local_variable_hell'

module RailsViewBenchmarks
  module Instances
    module ErectorBase
      class LocalVariableHell < ::RailsViewBenchmarks::Instances::DslStyle::LocalVariableHell
        include ::RailsViewBenchmarks::Instances::ErectorBase::Common

        def output_line(variable_name)
          "text \"\#{@#{variable_name}}\\n\""
        end
      end
    end
  end
end
