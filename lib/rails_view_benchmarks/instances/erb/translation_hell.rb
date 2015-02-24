require 'rails_view_benchmarks/instances/base'

module RailsViewBenchmarks
  module Instances
    module Erb
      class TranslationHell < ::RailsViewBenchmarks::Instances::Base
        def configure!(c)
          output_text = ""
          benchmark.translation_names.each do |translation_name|
            output_text << "<%= t(:#{translation_name}) %>\n"
          end

          c.main_view <<-EOS
<html>
    <head>
        <title>Translation Hell</title>
    </head>
    <body>
        #{output_text}
    </body>
</html>
EOS
        end
      end
    end
  end
end
