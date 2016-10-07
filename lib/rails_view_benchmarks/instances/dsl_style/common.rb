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

        def needs_module_declaration_and_explicit_requires?
          false
        end

        def module_declaration_and_explicit_requires_if_needed
          if needs_module_declaration_and_explicit_requires?
            "module Views\n  module Benchmark\n  end\nend\n\nrequire 'views/base'\n\n"
          else
            ""
          end
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
