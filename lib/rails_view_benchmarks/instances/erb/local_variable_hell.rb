require 'rails_view_benchmarks/instances/base'

module RailsViewBenchmarks
  module Instances
    module DslStyle
      class LocalVariableHell < ::RailsViewBenchmarks::Instances::Base
        def configure!(c)
          output_text = ""
          benchmark.variable_names.each do |variable_name|
            output_text << "          <%= #{variable_name} %>\n"
          end

          c.main_view <<-EOS
<html>
    <head>
        <title>Local Variable Hell</title>
    </head>
    <body>
        <% #{benchmark.output_count}.times do %>
#{output_text}
        <% end %>
    </body>
</html>
EOS
        end
      end
    end
  end
end
