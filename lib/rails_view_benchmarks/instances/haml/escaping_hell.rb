require 'rails_view_benchmarks/instances/base'

module RailsViewBenchmarks
  module Instances
    module Haml
      class EscapingHell < ::RailsViewBenchmarks::Instances::Base
        def configure!(c)
          c.main_view <<-EOS
%html
  %head
    %title Escaping Hell
  %body
    - @the_text.each do |t|
      = t
EOS
        end
      end
    end
  end
end
