require 'rails_view_benchmarks/instances/base'

module RailsViewBenchmarks
  module Instances
    module Erb
      class HelloWorld < ::RailsViewBenchmarks::Instances::Base
        def configure!(c)
          c.main_view <<-EOS
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
