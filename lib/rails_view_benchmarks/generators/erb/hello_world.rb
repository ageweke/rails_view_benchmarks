require 'rails_view_benchmarks/generators/base'

module RailsViewBenchmarks
  module Generators
    module Erb
      class HelloWorld < ::RailsViewBenchmarks::Generators::Base
        def generate!
          view 'hello_world', <<-EOS
<html>
  <head>
    <title>Hello, world!</title>
  </head>
  <body>
    <h1>Hello, world!</h1>
  </body>
</html>
EOS
        end
      end
    end
  end
end
