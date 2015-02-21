module RailsViewBenchmarks
  module Instances
    module Fortitude
      module Common
        def uses_instance_variables?
          false
        end

        def doctype_declaration
          "doctype!"
        end
      end
    end
  end
end
