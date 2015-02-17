require 'active_support/core_ext/hash/keys'
require 'active_support/core_ext/string'

module RailsViewBenchmarks
  class EngineAlias
    attr_reader :name, :engine

    def initialize(yaml_hash)
      yaml_hash = yaml_hash.symbolize_keys
      yaml_hash.assert_valid_keys(:name, :engine, :enabled, :configuration)

      @name = yaml_hash[:name] || raise("You must supply a 'name' for your engine listed in the YAML file")
      @engine_name = yaml_hash[:engine] || raise("You must supply a 'engine' for your engine listed in the YAML file")
      @enabled = yaml_hash.fetch(:enabled, true)
      @configuration = yaml_hash[:configuration] || { }

      raise ArgumentError, "The 'name' for your engine must be a String, not: #{@name.inspect}" unless @name.kind_of?(String) && @name.length > 0
      raise ArgumentError, "The 'enabled' for your engine must be true or false, not: #{@enabled.inspect}" unless (@enabled == true) || (@enabled == false)

      if @enabled
        raise ArgumentError, "The configuration for your engine must be a Hash, not: #{@configuration.inspect}" unless @configuration.kind_of?(Hash)
        raise ArgumentError, "The 'engine' for your engine must be a String, not: #{@engine_name.inspect}" unless @engine_name.kind_of?(String) && @engine_name.length > 0

        require "rails_view_benchmarks/templating_engines/#{@engine_name}" rescue nil
        @engine_class = "::RailsViewBenchmarks::TemplatingEngines::#{@engine_name.camelize}".constantize
        @engine = @engine_class.new(@configuration)
      end
    end

    def enabled?
      @enabled
    end

    def to_s
      "<EngineAlias '#{@name}': #{@engine}>"
    end
  end
end
