require 'rails_view_benchmarks/instances/base'
require 'rails_view_benchmarks/instances/dsl_style/common'

module RailsViewBenchmarks
  module Instances
    module DslStyle
      class SlimBenchmark < ::RailsViewBenchmarks::Instances::Base
        include ::RailsViewBenchmarks::Instances::DslStyle::Common

        def configure!(c)
          c.main_view <<-EOS
#{module_declaration_and_explicit_requires_if_needed}

class Views::Benchmark::Index < Views::Base
  needs :header, :item

  def content
    #{doctype_declaration}

    html {
      head {
        title "Simple Benchmark"
      }
    }

    body {
      h1 #{need_text("header")}
      unless #{need_text("item")}.empty?
        ul {
          for i in #{need_text("item")}
            if i[:current]
              li {
                strong i[:name]
              }
            else
              li {
                a(i[:name], :href => i[:url])
              }
            end
          end
        }
      else
        p "The list is empty."
      end
    }
  end
end
EOS
        end
      end
    end
  end
end
