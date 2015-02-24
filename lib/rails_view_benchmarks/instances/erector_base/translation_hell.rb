require 'rails_view_benchmarks/instances/base'
require 'rails_view_benchmarks/instances/erector_base/common'
require 'rails_view_benchmarks/instances/dsl_style/translation_hell'

module RailsViewBenchmarks
  module Instances
    module ErectorBase
      class TranslationHell < ::RailsViewBenchmarks::Instances::DslStyle::TranslationHell
        include ::RailsViewBenchmarks::Instances::ErectorBase::Common
      end
    end
  end
end
