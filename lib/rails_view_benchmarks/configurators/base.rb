module RailsViewBenchmarks
  module Configurators
    class Base
      def initialize(rails_root)
        @rails_root = File.expand_path(rails_root)
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

      def subpath(*args)
        File.join(*args)
      end
    end
  end
end
