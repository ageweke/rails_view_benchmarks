require 'rails_view_benchmarks/instances/base'
require 'rails_view_benchmarks/instances/dsl_style/common'

module RailsViewBenchmarks
  module Instances
    module DslStyle
      class LocalVariableHell < ::RailsViewBenchmarks::Instances::Base
        include ::RailsViewBenchmarks::Instances::DslStyle::Common

        def configure!(c)
          output_text = ""
          benchmark.variable_names.each do |variable_name|
            output_text << "          text #{variable_name}\n"
          end

          c.main_view <<-EOS
class Views::Benchmark::Index < Views::Base
  needs #{benchmark.variable_names_source}

  def content
    html do
      head do
        title do
          text "Local Variable Hell"
        end
      end
      body do
        #{benchmark.output_count}.times do
#{output_text}
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
