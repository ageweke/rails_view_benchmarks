require 'rails_view_benchmarks/instances/base'

module RailsViewBenchmarks
  module Instances
    module DslStyle
      class SlimBenchmark < ::RailsViewBenchmarks::Instances::Base
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

        def doctype_declaration
          raise "Must override in #{self.class.name}"
        end

        def configure!(c)
          c.main_view <<-EOS
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
