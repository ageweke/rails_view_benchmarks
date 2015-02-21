require 'rails_view_benchmarks/benchmarks/base'

module RailsViewBenchmarks
  module Benchmarks
    class LocalVariableHell < ::RailsViewBenchmarks::Benchmarks::Base
      def initialize(*args)
        super(*args)
        raise ArgumentError, "You must specify an integer :variable_count, not: #{configuration[:variable_count].inspect}" unless configuration[:variable_count] && configuration[:variable_count].kind_of?(Integer)
        raise ArgumentError, "You must specify an integer :output_count, not: #{configuration[:output_count].inspect}" unless configuration[:output_count] && configuration[:output_count].kind_of?(Integer)
      end

      def output_count
        configuration[:output_count]
      end

      def variable_count
        configuration[:variable_count]
      end

      def variable_names
        @variable_names ||= begin
          out = [ ]
          start_variable = "a"

          variable_count.times do
            variable_name = "v_#{start_variable}"
            out << variable_name.to_sym
            start_variable = start_variable.succ
          end

          out
        end
      end

      def variable_names_source
        @variable_names_source ||= "#{variable_names.map { |v| ":#{v}" }.join(", ")}"
      end

      def configure!(benchmark_configurator)
        bc = benchmark_configurator

        bc.copy(bc.rails_root_path('config', 'initializers', 'random_generators.rb'), 'benchmarks/config/initializers/random_generators.rb')
        benchmark_configurator.controller_contents <<-EOS
  def prepare_for_benchmark_and_return_locals
    start_variable = "a"
    vars = { }

    [ #{variable_names_source} ].each do |variable_name|
      vars[variable_name] = String.random_phrase
    end

    vars.each { |k,v| instance_variable_set("@\#{k}", v) }
    vars
  end
EOS
      end
    end
  end
end
