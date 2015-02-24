require 'rails_view_benchmarks/benchmarks/base'
require 'yaml'

module RailsViewBenchmarks
  module Benchmarks
    class UserDefinedHelperHell < ::RailsViewBenchmarks::Benchmarks::Base
      def initialize(*args)
        super(*args)
        raise ArgumentError, "You must specify an integer :call_count, not: #{configuration[:call_count].inspect}" unless configuration[:call_count] && configuration[:call_count].kind_of?(Integer)
      end

      def call_count
        configuration[:call_count]
      end

      def call_arguments
        @call_arguments ||= (0..(call_count - 1)).map { |i| "ab#{rand(1_000_000_000)}cd" }
      end

      def configure!(benchmark_configurator)
        benchmark_configurator.controller_contents <<-EOS
  def foobarize(s)
    "foo\#{s}bar"
  end

  helper_method :foobarize

  def prepare_for_benchmark_and_return_locals
    { }
  end
EOS
      end
    end
  end
end
