require 'rails_view_benchmarks/instances/dsl_style/slim_benchmark'

module RailsViewBenchmarks
  module Instances
    module ErectorBase
      class SlimBenchmark < ::RailsViewBenchmarks::Instances::DslStyle::SlimBenchmark
        def uses_instance_variables?
          true
        end

        def doctype_declaration
          "rawtext '<!DOCTYPE HTML>'"
        end
      end
    end
  end
end
