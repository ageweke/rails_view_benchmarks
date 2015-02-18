require 'rails_view_benchmarks/templating_engines/erector_base'

module RailsViewBenchmarks
  module TemplatingEngines
    class ErectorRails4 < ::RailsViewBenchmarks::TemplatingEngines::ErectorBase
      def additional_gemfile_lines
        [ "gem 'erector-rails4'" ]
      end
    end
  end
end
