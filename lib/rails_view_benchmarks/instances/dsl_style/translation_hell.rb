require 'rails_view_benchmarks/instances/base'
require 'rails_view_benchmarks/instances/dsl_style/common'

module RailsViewBenchmarks
  module Instances
    module DslStyle
      class TranslationHell < ::RailsViewBenchmarks::Instances::Base
        include ::RailsViewBenchmarks::Instances::DslStyle::Common

        def output_line(translation_name)
          "text \"\#{t(:#{translation_name})}\\n\""
        end

        def configure!(c)
          output_text = ""
          benchmark.translation_names.each do |translation_name|
            output_text << "          #{output_line(translation_name)}\n"
          end

          c.main_view <<-EOS
class Views::Benchmark::Index < Views::Base
  def content
    html do
      head do
        title do
          text "Translation Hell"
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
