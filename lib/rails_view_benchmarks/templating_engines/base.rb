require 'active_support/core_ext/hash/keys'

module RailsViewBenchmarks
  module TemplatingEngines
    class Base
      def initialize(configuration = nil)
        @configuration = (configuration || { }).symbolize_keys

        raise "You must either supply a :version, :git, or :path for engine #{self.class.name}; you specified none" unless @configuration[:version] || @configuration[:git] || @configuration[:path]
      end

      def configure!(templating_engine_configurator)
        raise "Must implement in #{self.class.name}"
      end

      def subpath
        @subpath ||= begin
          config_name_component = configuration.keys.sort.map do |key|
            value = configuration[key]
            "#{key}-#{value}"
          end.join("_")

          if config_name_component.length > 0
            "#{name_for_subpath}__#{config_name_component}"
          else
            name_for_subpath
          end
        end
      end

      def generator_constant_name
        @generator_constant_name ||= self.class.name.demodulize
      end

      def rails_server_name_fragment
        @rails_server_name_fragment ||= subpath
      end

      def view_file_extension
        raise "Must override in #{self.class.name}"
      end

      def gem_name
        raise "Must override in #{self.class.name}"
      end

      def additional_gemfile_lines
        [ gemfile_line ]
      end

      def to_s
        "<Engine '#{self.class.name.demodulize}': #{configuration.inspect}>"
      end

      def name
        @name ||= self.class.name.demodulize.underscore
      end

      private
      attr_reader :configuration

      def gemfile_line
        out = "gem '#{gem_name}'"

        if configuration[:version]
          out << ", '= #{configuration[:version]}'"
        elsif configuration[:path]
          out << ", :path => '#{configuration[:path]}'"
        elsif configuration[:git]
          out << ", :git => '#{configuration[:git]}'"
        else
          raise "You must supply one of :version, :path, or :git"
        end

        out
      end

      def name_for_subpath
        @name_for_subpath ||= self.class.name.demodulize.underscore
      end
    end
  end
end
