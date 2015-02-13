require 'rails_view_benchmarks/configurators/base'

module RailsViewBenchmarks
  module Configurators
    class TemplatingEngineConfigurator < ::RailsViewBenchmarks::Configurators::Base
      def initialize(rails_root, templating_engine)
        super(rails_root)
        @templating_engine = templating_engine
      end

      private
      attr_reader :templating_engine
    end
  end
end
