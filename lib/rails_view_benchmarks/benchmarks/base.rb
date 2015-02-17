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

      def subpath
        @subpath ||= self.class.name.demodulize.underscore
      end

      def to_s
        "<Benchmark '#{self.class.name.demodulize}': #{configuration.inspect}>"
      end
    end
  end
end
