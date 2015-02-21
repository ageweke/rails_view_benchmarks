module RailsViewBenchmarks
  module Instances
    module ErectorBase
      module Common
        def uses_instance_variables?
          true
        end

        def doctype_declaration
          "rawtext '<!DOCTYPE HTML>'"
        end
      end
    end
  end
end
