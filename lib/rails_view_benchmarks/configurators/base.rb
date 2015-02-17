require 'active_support/core_ext/array'
require 'active_support/core_ext/hash/keys'

require 'erb'

module RailsViewBenchmarks
  module Configurators
    class Base
      def initialize(rails_root)
        @rails_root = File.expand_path(rails_root)
      end

      def copy(*args)
        options = args.extract_options!.symbolize_keys
        options.assert_valid_keys(:erb)

        validate_copy_args!(*args)

        source_path = tmpl_path(args.pop)
        contents = File.read(source_path)

        if options[:erb]
          erb_binding = ERbBinding.new(options[:erb])
          contents = ERB.new(contents).result(erb_binding.get_binding)
        end

        file(*args, contents)
      end

      def rails_root_path(*args)
        subpath(@rails_root, *args)
      end

      def app_views_path(*args)
        subpath(rails_root_path, 'app', 'views', *args)
      end

      def rails_root_file(*args)
        file(rails_root_path, *args)
      end

      def app_views_file(*args)
        file(app_views_path, *args)
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

      private
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

      def validate_copy_args!(*args)
        unless args.length >= 2
          raise ArgumentError, "You must supply at least one component of a subpath, and the source location of the file to be copied; you supplied: #{args.inspect}"
        end
      end

      def subpath(*args)
        File.join(*args)
      end

      def tmpl_root
        @tmpl_root ||= File.expand_path(File.join(File.dirname(__FILE__), '..', '..', '..', 'tmpl', 'rails_view_benchmarks'))
      end

      def tmpl_path(*args)
        File.join(tmpl_root, *args)
      end

      class ERbBinding < ::Object
        def initialize(hash)
          @hash = hash.symbolize_keys
        end

        def method_missing(name, *args, &block)
          if @hash.has_key?(name.to_sym) && args.length == 0 && (! block)
            @hash[name.to_sym]
          else
            super
          end
        end

        def get_binding
          binding
        end
      end
    end
  end
end
