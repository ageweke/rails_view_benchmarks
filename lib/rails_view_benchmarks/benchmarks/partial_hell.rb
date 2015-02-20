require 'rails_view_benchmarks/benchmarks/base'

module RailsViewBenchmarks
  module Benchmarks
    class PartialHell < ::RailsViewBenchmarks::Benchmarks::Base
      def initialize(*args)
        super(*args)
        raise ArgumentError, "You must specify an integer :depth, not: #{configuration[:depth].inspect}" unless configuration[:depth] && configuration[:depth].kind_of?(Integer)
      end

      def depth
        configuration[:depth]
      end

      def controller_method_contents
        <<-EOS
    @value = rand(1_000_000)
    { }
EOS
      end
    end
  end
end
