require 'rails_view_benchmarks/instances/base'

module RailsViewBenchmarks
  module Instances
    module Erb
      class EscapingHell < ::RailsViewBenchmarks::Instances::Base
        def configure!(c)
          c.main_view <<-EOS
<html>
    <head>
        <title>Escaping Hell</title>
    </head>
    <body>
        <% @the_text.each do |t| %>
            <%= t %>
        <% end %>
    </body>
</html>
EOS
        end
      end
    end
  end
end
