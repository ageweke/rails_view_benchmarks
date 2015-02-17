require 'rails_view_benchmarks/templating_engines/base'

module RailsViewBenchmarks
  module TemplatingEngines
    class Fortitude < ::RailsViewBenchmarks::TemplatingEngines::Base
      def configure!(c)
        static_method_contents = if configuration.fetch(:static, true)
          "static(*args, &block)"
        else
          ""
        end

        c.rails_root_file 'app/views/base.rb', <<-EOS
class ::Views::Base < ::Fortitude::Widget
  doctype :html5

  format_output #{(!! configuration[:format_output]).inspect}

  start_and_end_comments #{(!! configuration[:start_and_end_comments]).inspect}

  enforce_element_nesting_rules #{(!! configuration[:enforce_element_nesting_rules]).inspect}
  enforce_attribute_rules #{(!! configuration[:enforce_attribute_rules]).inspect}
  enforce_id_uniqueness #{(!! configuration[:enforce_id_uniqueness]).inspect}

  def self.maybe_static(*args, &block)
    #{static_method_contents}
  end
end
EOS
      end

      def view_file_extension
        '.html.rb'
      end

      def additional_gemfile_lines
        [ "gem 'fortitude', :path => '/Users/andrew/Dev/ErrorSea/fortitude'" ]
      end
    end
  end
end
