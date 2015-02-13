require 'rails_view_benchmarks/templating_engines/fortitude'

module RailsViewBenchmarks
  module TemplatingEngines
    class Fortitude < ::RailsViewBenchmarks::TemplatingEngines::Base
      def additional_gemfile_lines
        [ "gem 'fortitude', :path => '/Users/andrew/Dev/ErrorSea/fortitude'" ]
      end
    end
  end
end
