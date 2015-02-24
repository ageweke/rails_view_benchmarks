require 'rails_view_benchmarks/instances/base'
require 'rails_view_benchmarks/instances/dsl_style/common'

module RailsViewBenchmarks
  module Instances
    module DslStyle
      class UserDefinedHelperHell < ::RailsViewBenchmarks::Instances::Base
        include ::RailsViewBenchmarks::Instances::DslStyle::Common

        def output_line(call_argument)
          "text \"\#{foobarize(\"#{call_argument}\")}\\n\""
        end

        def configure!(c)
          output_text = ""
          benchmark.call_arguments.each do |call_argument|
            output_text << "          #{output_line(call_argument)}\n"
          end

          c.main_view <<-EOS
class Views::Benchmark::Index < Views::Base
  def content
    html do
      head do
        title do
          text "User-Defined Helper Hell"
        end
      end
      body do
#{output_text}
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
