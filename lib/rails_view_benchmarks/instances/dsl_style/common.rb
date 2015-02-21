module RailsViewBenchmarks
  module Instances
    module DslStyle
      module Common
        def doctype_declaration
          raise "Must override in #{self.class.name}"
        end

        def uses_instance_variables?
          raise "Must override in #{self.class.name}"
        end

        def need_text(name)
          if uses_instance_variables?
            "@#{name}"
          else
            name
          end
        end
      end
    end
  end
end
