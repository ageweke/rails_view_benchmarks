require 'rails_view_benchmarks/benchmarks/base'
require 'yaml'

module RailsViewBenchmarks
  module Benchmarks
    class TranslationHell < ::RailsViewBenchmarks::Benchmarks::Base
      def initialize(*args)
        super(*args)
        raise ArgumentError, "You must specify an integer :translation_count, not: #{configuration[:translation_count].inspect}" unless configuration[:translation_count] && configuration[:translation_count].kind_of?(Integer)
      end

      def translation_count
        configuration[:translation_count]
      end

      def translation_names
        @translation_names ||= (0..(translation_count - 1)).map { |i| "translation_#{i}" }
      end

      def configure!(benchmark_configurator)
        bc = benchmark_configurator

        bc.copy(bc.rails_root_path('config', 'initializers', 'random_generators.rb'), 'benchmarks/config/initializers/random_generators.rb')

        translations_hash = { 'en' => { } }
        translation_names.each { |tn| translations_hash['en'][tn] = "this is the translation for '#{tn}'" }
        bc.rails_root_file('config', 'locales', 'en.yml', YAML.dump(translations_hash))

        benchmark_configurator.controller_method <<-EOS
{ }
EOS
      end
    end
  end
end
