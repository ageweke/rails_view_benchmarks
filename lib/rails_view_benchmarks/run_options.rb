require 'active_support/core_ext/integer'
require 'active_support/core_ext/hash/keys'

module RailsViewBenchmarks
  class RunOptions
    DEFAULT_RANDOM_SEED = 1
    DEFAULT_WARMUP_ITERATIONS = 5
    DEFAULT_TIME_DURATION = 5.seconds
    DEFAULT_MEMORY_ITERATIONS = 5
    DEFAULT_DISABLE_GC_DURING_TIME = false

    attr_reader :random_seed, :warmup_iterations, :time_duration, :memory_iterations, :disable_gc_during_time

    def self.from_yaml(yaml_hash)
      yaml_hash = yaml_hash.symbolize_keys
      yaml_hash.assert_valid_keys(:random_seed, :warmup_iterations, :time_duration, :memory_iterations, :disable_gc_during_time)

      out = new
      yaml_hash.each do |key, value|
        out.send("#{key}=", value)
      end
      out
    end

    def initialize
      @random_seed = DEFAULT_RANDOM_SEED
      @warmup_iterations = DEFAULT_WARMUP_ITERATIONS
      @time_duration = DEFAULT_TIME_DURATION
      @memory_iterations = DEFAULT_MEMORY_ITERATIONS
      @disable_gc_during_time = DEFAULT_DISABLE_GC_DURING_TIME
    end

    def random_seed=(x)
      raise ArgumentError, "Random seed must be a Fixnum, not: #{x.inspect}" unless x.kind_of?(Fixnum)
      @random_seed = x
    end

    def warmup_iterations=(x)
      raise ArgumentError, "Warmup iterations must be >= 0, not: #{x.inspect}" unless x.kind_of?(Integer) && x >= 0
      @warmup_iterations = Integer(x)
    end

    def disable_gc_during_time=(x)
      raise ArgumentError, "Disable GC during time must be a boolean, not: #{x.inspect}" unless (x == true) || (x == false) || (x == nil)
      @disable_gc_during_time = !! x
    end

    def run_time?
      @time_duration > 0
    end

    def run_memory?
      @memory_iterations > 0
    end

    def time_duration=(x)
      x = x.to_f if x.kind_of?(::ActiveSupport::Duration)
      raise ArgumentError, "Benchmark time duration must be >= 0, not: #{x.inspect}" unless x.kind_of?(Numeric) && x >= 0
      @time_duration = Float(x)
    end

    def memory_iterations=(x)
      raise ArgumentError, "Benchmark memory iterations must be >= 0, not: #{x.inspect}" unless x.kind_of?(Integer) && x >= 0
      @memory_iterations = x
    end

    def to_query_parameters
      {
        :random_seed => random_seed,
        :warmup_iterations => warmup_iterations,
        :time_duration => time_duration,
        :memory_iterations => memory_iterations,
        :disable_gc_during_time => disable_gc_during_time
      }
    end

    class << self
      def csv_header
        [
          [ "Random Seed", "Warmup Iterations", "Time Profiling (Duration, s)", "Memory Profiling (Iterations)" ]
        ]
      end
    end

    def to_csv
      [
        [ random_seed, warmup_iterations, time_duration, memory_iterations ]
      ]
    end

    def to_s
      "<RunOptions: seed #{@random_seed}, warmup x#{@warmup_iterations}, time #{@time_duration}s, memory x#{@memory_iterations}>"
    end
  end
end
