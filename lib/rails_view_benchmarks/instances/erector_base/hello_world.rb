require 'rails_view_benchmarks/instances/dsl_style/hello_world'
require 'rails_view_benchmarks/instances/erector_base/common'

module RailsViewBenchmarks
  module Instances
    module ErectorBase
      class HelloWorld < ::RailsViewBenchmarks::Instances::DslStyle::HelloWorld
        include ::RailsViewBenchmarks::Instances::ErectorBase::Common
      end
    end
  end
end
