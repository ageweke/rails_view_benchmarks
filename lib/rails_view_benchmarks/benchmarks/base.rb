module RailsViewBenchmarks
  module Benchmarks
    class Base
      def initialize
        # nothing here
      end

      def controller_contents
        <<-EOS
  def #{controller_method_name}
    #{controller_method_contents}
  end
EOS
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

      def controller_method_name
        @controller_method_name ||= self.class.name.demodulize.underscore
      end
    end
  end
end
