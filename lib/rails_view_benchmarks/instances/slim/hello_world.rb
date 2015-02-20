require 'rails_view_benchmarks/instances/base'

module RailsViewBenchmarks
  module Instances
    module Slim
      class HelloWorld < ::RailsViewBenchmarks::Instances::Base
        def configure!(c)
          c.main_view <<-EOS
html
  head
    title Hello, world!
  body
    h1 Hello, world!
EOS
        end
      end
    end
  end
end
