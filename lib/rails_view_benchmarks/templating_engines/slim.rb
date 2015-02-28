require 'rails_view_benchmarks/templating_engines/base'

module RailsViewBenchmarks
  module TemplatingEngines
    class Slim < ::RailsViewBenchmarks::TemplatingEngines::Base
      def configure!(c)
        c.rails_root_file 'config/initializers/slim.rb', <<-EOS
Slim::Engine.options[:pretty] = #{(!! configuration[:pretty]).inspect}
EOS
      end

      def view_file_extension
        '.html.slim'
      end

      def gem_name
        "slim"
      end
    end
  end
end
