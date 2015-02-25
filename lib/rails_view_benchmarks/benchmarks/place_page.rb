require 'rails_view_benchmarks/benchmarks/base'

module RailsViewBenchmarks
  module Benchmarks
    class PlacePage < ::RailsViewBenchmarks::Benchmarks::Base
      def configure!(benchmark_configurator)
        bc = benchmark_configurator

        bc.copy(bc.rails_root_path('config', 'initializers', 'random_generators.rb'), 'benchmarks/config/initializers/random_generators.rb')
        bc.copy(bc.rails_root_path('app', 'controllers', 'place_page_methods.rb'), 'benchmarks/place_page/place_page_methods.rb')
        bc.copy(bc.rails_root_path('app', 'helpers', 'place_page_helper.rb'), 'benchmarks/place_page/place_page_helper.rb')
        bc.controller_contents <<-EOS
  include ::PlacePageMethods

  def prepare_for_benchmark_and_return_locals
    set_instance_variables_for_place_page!
  end
EOS
      end
    end
  end
end
