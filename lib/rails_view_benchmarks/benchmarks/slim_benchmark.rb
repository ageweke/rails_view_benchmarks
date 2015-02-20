require 'rails_view_benchmarks/benchmarks/base'

module RailsViewBenchmarks
  module Benchmarks
    class SlimBenchmark < ::RailsViewBenchmarks::Benchmarks::Base
      def controller_method_contents
        <<-EOS
    @header = 'Colors'
    @item = [ { name: 'red',   current: true,  url: '#red'   },
      { name: 'green', current: false, url: '#green' },
      { name: 'blue',  current: false, url: '#blue'  } ]
    { }
EOS
      end
    end
  end
end
