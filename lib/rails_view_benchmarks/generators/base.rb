require 'fileutils'

module RailsViewBenchmarks
  module Generators
    class Base
      class NoSuchGeneratorError < StandardError
        attr_reader :templating_engine, :benchmark, :generator_class_name

        def initialize(templating_engine, benchmark, generator_class_name)
          @templating_engine = templating_engine
          @benchmark = benchmark
          @generator_class_name = generator_class_name

          super("The benchmark #{benchmark} has not been implemented for templating engine #{templating_engine}. (The class '#{generator_class_name}' does not exist.)")
        end
      end

      class << self
        def get(templating_engine, benchmark, rails_root)
          generation_context = ::RailsViewBenchmarks::Generators::GenerationContext.new(templating_engine, benchmark, rails_root)
          generator_class_name = generation_context.generator_class_name

          generator_class = begin
            generator_class_name.constantize
          rescue NameError => ne
            raise NoSuchGeneratorError.new(templating_engine, benchmark, generator_class_name)
          end

          generator_class.new(generation_context)
        end
      end

      def initialize(generation_context)
        @generation_context = generation_context
      end

      def generate!
        raise "Must override in #{self.class.name}"
      end

      private
      attr_accessor :generation_context

      def rails_root_file(*args)
        file(generation_context.rails_root_path, *args)
      end

      def app_views_file(*args)
        file(generation_context.app_views_path, *args)
      end

      def app_views_view(*args)
        view_file(generation_context.app_views_path, *args)
      end

      def view(*args)
        view_file(generation_context.benchmark_views_path, *args)
      end

      def view_file(*args)
        file(*add_extension(generation_context.view_file_extension, *args))
      end

      def file(*args)
        validate_args!(*args)

        contents = args.pop
        contents += "\n" unless contents =~ /\n\s*\Z/mi
        path = File.join(*args)

        FileUtils.mkdir_p(File.dirname(path))
        File.open(path, 'w') do |f|
          f << contents
        end

        path
      end

      def add_extension(extension, *args)
        validate_args!(*args)
        out = args.dup

        extension = ".#{extension}" unless extension =~ /^\./
        last_component = out[-2]
        unless last_component =~ /(#{Regexp.escape(extension)})$/
          out[-2] = "#{last_component}#{extension}"
        end

        out
      end

      def validate_args!(*args)
        unless args.length >= 2
          raise ArgumentError, "You must supply at least one component of a subpath, and the text for the file; you supplied: #{args.inspect}"
        end
      end
    end
  end
end
