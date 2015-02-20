require 'rails_view_benchmarks/instances/abstract/partial_hell'

module RailsViewBenchmarks
  module Instances
    module Erb
      class PartialHell < ::RailsViewBenchmarks::Instances::Abstract::PartialHell
        def splat_main_view!(c, depth)
          c.main_view <<-EOS
<html>
  <head>
    <title>Partial Hell: Depth #{depth}</title>
  </head>
  <body>
    <h1>Partial Hell: Depth #{depth}</h1>
    <%= render :partial => 'partial_1', :locals => { :value => @value } %>
  </body>
</html>
EOS
        end

        def splat_intermediate_partial!(c, depth)
          c.view "_partial_#{depth}", <<-EOS
depth #{depth}:

<%= render :partial => 'partial_#{depth + 1}', :locals => { :value => value } %>
<%= render :partial => 'partial_#{depth + 1}', :locals => { :value => value } %>
EOS
        end

        def splat_final_partial!(c, depth)
          c.view "_partial_#{depth}", <<-EOS
final: depth #{depth}, value <%= value %>!
EOS
        end
      end
    end
  end
end
