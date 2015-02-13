require 'fileutils'

module RailsViewBenchmarks
  module Instances
    class Base
      class NoSuchInstanceError < StandardError
        attr_reader :templating_engine, :benchmark, :instance_class_name

        def initialize(templating_engine, benchmark, instance_class_name)
          @templating_engine = templating_engine
          @benchmark = benchmark
          @instance_class_name = instance_class_name

          super("The benchmark #{benchmark} has not been implemented for templating engine #{templating_engine}. (The class '#{instance_class_name}' does not exist.)")
        end
      end

      class << self
        def get(templating_engine, benchmark)
          root_module = self.name.deconstantize
          instance_class_name = "#{root_module}::#{templating_engine.generator_constant_name}::#{benchmark.generator_constant_name}"
          instance_subpath = instance_class_name.underscore

          begin
            require instance_subpath
          rescue LoadError => le
            # let's keep trying anyway...
          end

          instance_class = begin
            instance_class_name.constantize
          rescue NameError => ne
            raise NoSuchInstanceError.new(templating_engine, benchmark, instance_class_name)
          end

          instance_class.new(templating_engine, benchmark)
        end
      end

      def initialize(templating_engine, benchmark)
        @templating_engine = templating_engine
        @benchmark = benchmark
      end

      def configure!(instance_configurator)
        raise "Must override in #{self.class.name}"
      end

      private
      attr_reader :templating_engine, :benchmark
    end
  end
end
