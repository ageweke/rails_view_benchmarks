require 'rails_view_benchmarks/instances/base'

module RailsViewBenchmarks
  module Instances
    module Haml
      class SlimBenchmark < ::RailsViewBenchmarks::Instances::Base
        def configure!(c)
          c.main_view <<-EOS
!!!

%html
  %head
    %title Simple Benchmark
  %body
    %h1 = @header
    - if ! @item.empty?
      %ul
      - for i in @item
        - if i[:current]
          %li
            %strong = i[:name]
        - else
          %li
            %a{:href => "\#{i[:url]}"}= i[:name]
    - else
      %p "The list is empty."
EOS
        end
      end
    end
  end
end
