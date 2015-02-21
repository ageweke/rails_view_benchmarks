require 'rails_view_benchmarks/instances/base'
require 'rails_view_benchmarks/instances/dsl_style/common'

module RailsViewBenchmarks
  module Instances
    module DslStyle
      class EscapingHell < ::RailsViewBenchmarks::Instances::Base
        include ::RailsViewBenchmarks::Instances::DslStyle::Common

        def configure!(c)
          c.main_view <<-EOS
class Views::Benchmark::Index < Views::Base
  needs :the_text

  def content
    html do
      head do
        title "Escaping Hell"
      end
      body do
        #{need_text("the_text")}.each do |t|
          text "\#{t}\n"
        end
      end
    end
  end
end
EOS
        end
      end
    end
  end
end
