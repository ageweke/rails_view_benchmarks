require 'rails_view_benchmarks/instances/abstract/partial_hell'

module RailsViewBenchmarks
  module Instances
    module DslStyle
      class PartialHell < ::RailsViewBenchmarks::Instances::Abstract::PartialHell
        def uses_instance_variables?
          raise "Must override in #{self.class.name}"
        end

        def need_text(name)
          if uses_instance_variables?
            "@#{name}"
          else
            name
          end
        end

        def splat_main_view!(c, depth)
          c.main_view <<-EOS
class Views::Benchmark::Index < Views::Base
  needs :value

  def content
    html {
      head {
        title "Partial Hell: Depth #{depth}"
      }
    }
    body {
      h1 "Partial Hell: Depth #{depth}"
      widget Views::Benchmark::Partial1, :value => #{need_text("value")}
    }
  end
end
EOS
        end

        def splat_intermediate_partial!(c, depth)
          c.view "partial#{depth}", <<-EOS
class Views::Benchmark::Partial#{depth} < Views::Base
  needs :value

  def content
    text "depth #{depth}:\\n\\n"

    widget Views::Benchmark::Partial#{depth + 1}, :value => #{need_text("value")}
    widget Views::Benchmark::Partial#{depth + 1}, :value => #{need_text("value")}
  end
end
EOS
        end

        def splat_final_partial!(c, depth)
          c.view "partial#{depth}", <<-EOS
class Views::Benchmark::Partial#{depth} < Views::Base
  needs :value

  def content
    text "final: depth #{depth}, value \#{#{need_text("value")}}!"
  end
end
EOS
        end
      end
    end
  end
end
