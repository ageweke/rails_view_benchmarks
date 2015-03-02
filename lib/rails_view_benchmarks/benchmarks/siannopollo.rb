require 'rails_view_benchmarks/benchmarks/base'

module RailsViewBenchmarks
  module Benchmarks
    class Siannopollo < ::RailsViewBenchmarks::Benchmarks::Base
      def controller_method_contents
        <<-EOS
    { }
EOS
      end
    end
  end
end
