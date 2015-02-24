require 'rails_view_benchmarks/instances/dsl_style/translation_Hell'
require 'rails_view_benchmarks/instances/fortitude/common'

module RailsViewBenchmarks
  module Instances
    module Fortitude
      class TranslationHell < ::RailsViewBenchmarks::Instances::DslStyle::TranslationHell
        include ::RailsViewBenchmarks::Instances::Fortitude::Common
      end
    end
  end
end
