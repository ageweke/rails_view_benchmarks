require 'rails_view_benchmarks/instances/base'

module RailsViewBenchmarks
  module Instances
    module Haml
      class TranslationHell < ::RailsViewBenchmarks::Instances::Base
        def configure!(c)
          output_text = ""
          benchmark.translation_names.each do |translation_name|
            output_text << "    = t(:#{translation_name})\n"
          end

          c.main_view <<-EOS
%html
  %head
    %title Local Variable Hell
  %body
#{output_text}
EOS
        end
      end
    end
  end
end
