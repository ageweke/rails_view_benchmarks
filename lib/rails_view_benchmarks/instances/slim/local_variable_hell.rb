require 'rails_view_benchmarks/instances/base'

module RailsViewBenchmarks
  module Instances
    module Slim
      class LocalVariableHell < ::RailsViewBenchmarks::Instances::Base
        def configure!(c)
          output_text = ""
          benchmark.variable_names.each do |variable_name|
            output_text << "      = #{variable_name}\n"
          end

          c.main_view <<-EOS
html
  head
    title Local Variable Hell
  body
    - #{benchmark.output_count}.times do
#{output_text}
EOS
        end
      end
    end
  end
end
