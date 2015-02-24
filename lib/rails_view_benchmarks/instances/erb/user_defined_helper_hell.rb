require 'rails_view_benchmarks/instances/base'

module RailsViewBenchmarks
  module Instances
    module Erb
      class UserDefinedHelperHell < ::RailsViewBenchmarks::Instances::Base
        def configure!(c)
          output_text = ""
          benchmark.call_arguments.each do |call_argument|
            output_text << "<%= foobarize(\"#{call_argument}\") %>\n"
          end

          c.main_view <<-EOS
<html>
    <head>
        <title>User-Defined Helper Hell</title>
    </head>
    <body>
        #{output_text}
    </body>
</html>
EOS
        end
      end
    end
  end
end
