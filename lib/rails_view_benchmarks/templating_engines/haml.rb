require 'rails_view_benchmarks/templating_engines/base'

module RailsViewBenchmarks
  module TemplatingEngines
    class Haml < ::RailsViewBenchmarks::TemplatingEngines::Base
      def configure!(c)
        c.rails_root_file 'config/initializers/haml.rb', <<-EOS
Haml::Template.options[:format] = :html5
Haml::Template.options[:ugly] = #{(!! configuration[:ugly]).inspect}
EOS
      end

      def view_file_extension
        '.html.haml'
      end

      def gem_name
        "haml"
      end
    end
  end
end
