require 'rails_view_benchmarks/instances/dsl_style/escaping_hell'
require 'rails_view_benchmarks/instances/fortitude/common'

module RailsViewBenchmarks
  module Instances
    module Fortitude
      class EscapingHell < ::RailsViewBenchmarks::Instances::DslStyle::EscapingHell
        include ::RailsViewBenchmarks::Instances::Fortitude::Common
      end
    end
  end
end
