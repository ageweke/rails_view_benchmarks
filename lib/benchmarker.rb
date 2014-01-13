# Coding: UTF-8

class Benchmarker
  DEFAULT_PREP_COUNT = 10
  DEFAULT_BENCHMARK_PERIOD = 1.0
  MICROSECONDS_PER_SECOND = 1_000_000.0

  def initialize(options = { })
    @benchmark_period = Float(options[:benchmark_period] || DEFAULT_BENCHMARK_PERIOD)
    @measure_period = options[:measure_period] || (@benchmark_period * 0.10)
    @prep_count = options[:prep_count] || DEFAULT_PREP_COUNT
    @gc_period = options[:gc_period] || (@benchmark_period * 0.10)
  end

  def go!(&block)
    prep(&block)
    measure(&block)
    benchmark(&block)

    benchmark_gc(&block) if GC.respond_to?(:stat)
  end

  def to_s
    require 'stringio'

    out = StringIO.new

    out << "%.2f microseconds" % [ @microseconds_per_iteration ]

    if @gc_stats
      out << ", " + @gc_stats.map do |key, value|
        "%.2f %s" % [ value, key ]
      end.join(", ")
    end

    out << " (%d iterations in %.2f seconds)" % [ @benchmark_iterations, @benchmark_time ]

    out.puts ""

    out.string
  end

  private
  def prep(&block)
    @prep_count.times(&block)
  end

  def measure(&block)
    iterations = 1
    last_measured = 0.0

    while last_measured < @measure_period
      iterations *= 2

      start_time = Time.now
      iterations.times(&block)
      end_time = Time.now

      last_measured = end_time - start_time
    end

    @approximate_microseconds_per_iteration = (last_measured.to_f / iterations.to_f) * MICROSECONDS_PER_SECOND
  end

  def benchmark(&block)
    @approximate_microseconds_per_iteration || raise("Must call #measure first")
    @benchmark_iterations = ((@benchmark_period * MICROSECONDS_PER_SECOND).to_f / @approximate_microseconds_per_iteration).ceil

    do_gc!

    start_time = Time.now
    @benchmark_iterations.times(&block)
    end_time = Time.now

    @benchmark_time = end_time - start_time
    @microseconds_per_iteration = (@benchmark_time.to_f / @benchmark_iterations.to_f) * MICROSECONDS_PER_SECOND
  end

  def benchmark_gc(&block)
    @approximate_microseconds_per_iteration || raise("Must call #measure first")
    count = ((@gc_period * MICROSECONDS_PER_SECOND).to_f / @approximate_microseconds_per_iteration).ceil

    GC.disable
    start_stats = GC.stat

    count.times(&block)

    end_stats = GC.stat
    GC.enable
    do_gc!

    @gc_stats = { }
    [ :heap_live_num, :total_allocated_object, :heap_live_slot ].each do |stat|
      if start_stats[stat]
        @gc_stats[stat] =
          (end_stats[stat]- start_stats[stat]).to_f / count.to_f
      end
    end
  end

  def do_gc!
    begin
      GC.start(:full_mark => true, :immediate_sweep => true)
    rescue ArgumentError
      GC.start
    end
  end
end
