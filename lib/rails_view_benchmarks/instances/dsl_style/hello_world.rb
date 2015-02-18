require 'rails_view_benchmarks/instances/base'

module RailsViewBenchmarks
  module Instances
    module DslStyle
      class HelloWorld < ::RailsViewBenchmarks::Instances::Base
        def configure!(c)
          c.main_view <<-EOS
class Views::Benchmark::Index < Views::Base
  def content
    html {
      head {
        title "Hello, world!"
      }
      body {
        h1 "Hello, world!"
      }
    }
  end
end
EOS
        end
      end
    end
  end
end
