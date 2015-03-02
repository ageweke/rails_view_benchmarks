require 'rails_view_benchmarks/instances/dsl_style/siannopollo'
require 'rails_view_benchmarks/instances/fortitude/common'

module RailsViewBenchmarks
  module Instances
    module Fortitude
      class Siannopollo < ::RailsViewBenchmarks::Instances::DslStyle::Siannopollo
        include ::RailsViewBenchmarks::Instances::Fortitude::Common
      end
    end
  end
end
