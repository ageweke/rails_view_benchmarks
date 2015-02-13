require 'rails_view_benchmarks/benchmarks/base'

module RailsViewBenchmarks
  module Benchmarks
    class HelloWorld < ::RailsViewBenchmarks::Benchmarks::Base
      def controller_method_contents
        ""
      end
    end
  end
end
