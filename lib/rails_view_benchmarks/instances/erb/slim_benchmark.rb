require 'rails_view_benchmarks/instances/base'

module RailsViewBenchmarks
  module Instances
    module Erb
      class SlimBenchmark < ::RailsViewBenchmarks::Instances::Base
        def configure!(c)
          c.main_view <<-EOS
<!DOCTYPE HTML>

<html>
  <head>
    <title>Simple Benchmark</title>
  </head>
  <body>
    <h1><%= @header %></h1>
    <% unless @item.empty? %>
      <ul>
      <% for i in @item %>
        <% if i[:current] %>
          <li><strong><%= i[:name] %></strong></li>
        <% else %>
          <li><a href="<%= i[:url] %>"><%= i[:name] %></a></li>
        <% end %>
      <% end %>
      </ul>
    <% else %>
      <p>The list is empty.</p>
    <% end %>
  </body>
</html>
EOS
        end
      end
    end
  end
end
