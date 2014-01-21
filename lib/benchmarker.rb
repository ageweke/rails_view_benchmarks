# Coding: UTF-8

class Benchmarker
  DEFAULT_PREP_COUNT = 10
  DEFAULT_BENCHMARK_PERIOD = 5.0
  DEFAULT_GC_MIN_COUNT = 5
  MICROSECONDS_PER_SECOND = 1_000_000.0

  def initialize(options = { })
    @benchmark_period = Float(options[:benchmark_period] || DEFAULT_BENCHMARK_PERIOD)
    @prep_count = options[:prep_count] || DEFAULT_PREP_COUNT

    @gc_period = options[:gc_period] || (@benchmark_period * 0.10)
    @gc_min_count = options[:gc_min_count] || DEFAULT_GC_MIN_COUNT
  end

  def go!(&block)
    prep(&block)
    benchmark(&block)

    benchmark_gc(&block) if GC.respond_to?(:stat)
  end

  def to_hash
    {
      :time => {
        :iterations => @benchmark_iterations,
        :time => @benchmark_time
      },
      :gc => {
        :iterations => @gc_iterations
      }.merge(@gc_stats)
    }
  end

  def to_s
    require 'stringio'

    out = StringIO.new

    out << "%.2f microseconds" % [ microseconds_per_iteration ]

    if @gc_stats
      out << ", " + @gc_stats.map do |key, value|
        "%.2f %s" % [ value.to_f / @gc_iterations.to_f, key ]
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

  def benchmark(&block)
    do_gc!

    start_time = Time.now
    stop_time = start_time + @benchmark_period
    iterations = 0

    while Time.now < stop_time
      block.call
      iterations += 1
    end
    end_time = Time.now

    @benchmark_time = end_time - start_time
    @benchmark_iterations = iterations
  end

  def microseconds_per_iteration
    (@benchmark_time.to_f / @benchmark_iterations.to_f) * MICROSECONDS_PER_SECOND
  end

  def benchmark_gc(&block)
    start_time = Time.now
    stop_time = start_time + @gc_period
    iterations = 0

    GC.disable
    start_stats = GC.stat

    while Time.now < stop_time || iterations < @gc_min_count
      block.call
      iterations += 1
    end

    end_stats = GC.stat
    GC.enable
    do_gc!

    @gc_stats = { }
    @gc_iterations = iterations
    [ :heap_live_num, :total_allocated_object, :heap_live_slot ].each do |stat|
      if start_stats[stat]
        @gc_stats[stat] = (end_stats[stat]- start_stats[stat])
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
