require 'rails_view_benchmarks/configurators/base'

module RailsViewBenchmarks
  module Configurators
    class BenchmarkConfigurator < ::RailsViewBenchmarks::Configurators::Base
      def initialize(rails_root, benchmark)
        super(rails_root)
        @benchmark = benchmark
      end

      def controller_contents(contents)
        file(controller_path, "class BenchmarkController < BenchmarkControllerBase\n#{contents}\nend\n")
      end

      def controller_method(contents)
        controller_contents("  def prepare_for_benchmark_and_return_locals\n    #{contents}\n  end\n")
      end

      private
      attr_reader :benchmark

      def controller_path
        rails_root_path('app', 'controllers', 'benchmark_controller.rb')
      end
    end
  end
end
