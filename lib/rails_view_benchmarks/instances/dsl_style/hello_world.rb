require 'rails_view_benchmarks/instances/base'
require 'rails_view_benchmarks/instances/dsl_style/common'

module RailsViewBenchmarks
  module Instances
    module DslStyle
      class HelloWorld < ::RailsViewBenchmarks::Instances::Base
        include ::RailsViewBenchmarks::Instances::DslStyle::Common

        def configure!(c)
          c.main_view <<-EOS
#{module_declaration_and_explicit_requires_if_needed}

class Views::Benchmark::Index < Views::Base
  def content
    html {
      head {
        title "Hello, world!"
      }
      body {
        h1 "Hello, world!"
      }
    }
  end
end
EOS
        end
      end
    end
  end
end
