require 'rails_view_benchmarks/benchmarks/base'

module RailsViewBenchmarks
  module Benchmarks
    class EscapingHell < ::RailsViewBenchmarks::Benchmarks::Base
      def initialize(*args)
        super(*args)
        raise ArgumentError, "You must specify an integer :word_count, not: #{configuration[:word_count].inspect}" unless configuration[:word_count] && configuration[:word_count].kind_of?(Integer)
      end

      def word_count
        configuration[:word_count]
      end

      def configure!(benchmark_configurator)
        bc = benchmark_configurator

        bc.copy(bc.rails_root_path('config', 'initializers', 'random_generators.rb'), 'benchmarks/config/initializers/random_generators.rb')
        benchmark_configurator.controller_contents <<-EOS
  ESCAPE_CHARACTERS = "&<>\\"\\'"

  def prepare_for_benchmark_and_return_locals
    @the_text = [ ]
    #{word_count}.times do
      t = String.random_word + ESCAPE_CHARACTERS[rand(ESCAPE_CHARACTERS.length)] + ESCAPE_CHARACTERS[rand(ESCAPE_CHARACTERS.length)] + String.random_word
      @the_text << t
    end
    { }
  end
EOS
      end
    end
  end
end
