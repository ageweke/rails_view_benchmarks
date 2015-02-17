require 'active_support/core_ext/hash/keys'
require 'active_support/core_ext/string'

module RailsViewBenchmarks
  class BenchmarkAlias
    attr_reader :name, :benchmark

    def initialize(yaml_hash)
      yaml_hash = yaml_hash.symbolize_keys
      yaml_hash.assert_valid_keys(:name, :benchmark, :enabled, :configuration)

      @name = yaml_hash[:name] || raise("You must supply a 'name' for your benchmark listed in the YAML file")
      @benchmark_name = yaml_hash[:benchmark] || raise("You must supply a 'benchmark' for your benchmark listed in the YAML file")
      @enabled = yaml_hash.fetch(:enabled, true)
      @configuration = yaml_hash[:configuration] || { }

      raise ArgumentError, "The 'name' for your benchmark must be a String, not: #{@name.inspect}" unless @name.kind_of?(String) && @name.length > 0
      raise ArgumentError, "The 'enabled' for your benchmark must be true or false, not: #{@enabled.inspect}" unless (@enabled == true) || (@enabled == false)

      if @enabled
        raise ArgumentError, "The configuration for your benchmark must be a Hash, not: #{@configuration.inspect}" unless @configuration.kind_of?(Hash)
        raise ArgumentError, "The 'benchmark' for your benchmark must be a String, not: #{@benchmark_name.inspect}" unless @benchmark_name.kind_of?(String) && @benchmark_name.length > 0

        require "rails_view_benchmarks/benchmarks/#{@benchmark_name}" rescue nil
        @benchmark_class = "::RailsViewBenchmarks::Benchmarks::#{@benchmark_name.camelize}".constantize
        @benchmark = @benchmark_class.new(@configuration)
      end
    end

    def enabled?
      @enabled
    end

    def to_s
      "<BenchmarkAlias '#{@name}': #{@benchmark}>"
    end
  end
end
