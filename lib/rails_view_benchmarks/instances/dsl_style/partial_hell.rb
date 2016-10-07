require 'rails_view_benchmarks/instances/abstract/partial_hell'
require 'rails_view_benchmarks/instances/dsl_style/common'

module RailsViewBenchmarks
  module Instances
    module DslStyle
      class PartialHell < ::RailsViewBenchmarks::Instances::Abstract::PartialHell
        include ::RailsViewBenchmarks::Instances::DslStyle::Common

        def require_if_needed(filename)
          if needs_module_declaration_and_explicit_requires?
            "require '#{filename}'"
          else
            ""
          end
        end

        def splat_main_view!(c, depth)
          c.main_view <<-EOS
#{module_declaration_and_explicit_requires_if_needed}

#{require_if_needed 'views/benchmark/partial1'}

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
#{require_if_needed "views/benchmark/partial#{depth + 1}"}

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
