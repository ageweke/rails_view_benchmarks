require 'active_support/core_ext/hash/keys'

module RailsViewBenchmarks
  module Benchmarks
    class Base
      attr_reader :configuration

      def initialize(configuration = nil)
        @configuration = (configuration || { }).symbolize_keys
      end

      def configure!(benchmark_configurator)
        benchmark_configurator.controller_method(controller_method_contents)
      end

      def generator_constant_name
        @generator_constant_name ||= self.class.name.demodulize
      end

      def rails_server_name_fragment
        @rails_server_name_fragment ||= self.class.name.demodulize.underscore
      end

      def controller_method_contents
        raise "Must override in #{self.class.name}"
      end

      def name
        @name ||= self.class.name.demodulize.underscore
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

      def to_s
        "<Benchmark '#{self.class.name.demodulize}': #{configuration.inspect}>"
      end

      private
      def name_for_subpath
        @name_for_subpath ||= self.class.name.demodulize.underscore
      end
    end
  end
end
