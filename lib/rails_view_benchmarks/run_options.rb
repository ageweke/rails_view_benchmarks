require 'active_support/core_ext/integer'

module RailsViewBenchmarks
  class RunOptions
    DEFAULT_RANDOM_SEED = 1
    DEFAULT_WARMUP_ITERATIONS = 5
    DEFAULT_BENCHMARK_TIME_DURATION = 5.seconds
    DEFAULT_BENCHMARK_MEMORY_ITERATIONS = 5

    attr_reader :random_seed, :warmup_iterations, :benchmark_time_duration, :benchmark_memory_iterations

    def initialize
      @random_seed = DEFAULT_RANDOM_SEED
      @warmup_iterations = DEFAULT_WARMUP_ITERATIONS
      @benchmark_time_duration = DEFAULT_BENCHMARK_TIME_DURATION
      @benchmark_memory_iterations = DEFAULT_BENCHMARK_MEMORY_ITERATIONS
    end

    def random_seed=(x)
      raise ArgumentError, "Random seed must be a Fixnum, not: #{x.inspect}" unless x.kind_of?(Fixnum)
      @random_seed = x
    end

    def warmup_iterations=(x)
      raise ArgumentError, "Warmup iterations must be >= 0, not: #{x.inspect}" unless x.kind_of?(Integer) && x >= 0
      @warmup_iterations = Integer(x)
    end

    def benchmark_time_duration=(x)
      x = x.to_f if x.kind_of?(::ActiveSupport::Duration)
      raise ArgumentError, "Benchmark time duration must be >= 0, not: #{x.inspect}" unless x.kind_of?(Numeric) && x >= 0
      @benchmark_time_duration = Float(x)
    end

    def benchmark_memory_iterations=(x)
      raise ArgumentError, "Benchmark memory iterations must be >= 0, not: #{x.inspect}" unless x.kind_of?(Integer) && x >= 0
      @benchmark_memory_iterations = x
    end

    def to_query_parameters
      {
        :random_seed => random_seed,
        :warmup_iterations => warmup_iterations,
        :benchmark_time_duration => benchmark_time_duration,
        :benchmark_memory_iterations => benchmark_memory_iterations
      }
    end
  end
end
