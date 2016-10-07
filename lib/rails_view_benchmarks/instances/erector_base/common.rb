module RailsViewBenchmarks
  module Instances
    module ErectorBase
      module Common
        def uses_instance_variables?
          true
        end

        def needs_module_declaration_and_explicit_requires?
          true
        end

        def doctype_declaration
          "rawtext '<!DOCTYPE HTML>'"
        end
      end
    end
  end
end
