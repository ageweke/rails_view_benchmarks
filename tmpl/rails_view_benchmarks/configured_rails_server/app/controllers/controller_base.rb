class ::<%= controller_name.camelize %>ControllerBase < ApplicationController
  # >  # -- helps with syntax highlighting under Sublime

  helper_method :rand, :random

  def rand
    raise "You should never use rand() in benchmark code; instead, use the Random instance available as @random/random"
  end

  def random
    @random || raise("No random has been set yet, somehow")
  end

  def rendered_html
    prepare!(:skip_warmup_iterations => true)
    render_main_view!
  end

  def benchmark_time
    prepare!

    start_time = Time.now
    end_time = start_time + benchmark_time_duration
    count = 0

    while Time.now < end_time
      render_main_view!
      count += 1
    end
    end_time = Time.now

    render :json => { :count => count, :time => (end_time.to_f - start_time.to_f) }
  end

  def benchmark_memory
    prepare!

    GC.start(:full_mark => true, :immediate_sweep => true)
    GC.disable
    start_stats = GC.stat

    benchmark_memory_iterations.times do
      render_main_view!
    end

    end_stats = GC.stat
    GC.enable

    render :json => { :count => benchmark_memory_iterations, :start_gc_stats => start_stats, :end_gc_stats => end_stats }
  end

  private
  DEFAULT_RANDOM_SEED = 1

  def random_seed
    @random_seed ||= Integer(params[:srand] || DEFAULT_RANDOM_SEED)
  end

  def set_random!
    @random = Random.new(random_seed)
  end

  DEFAULT_WARMUP_ITERATIONS = 5

  def warmup_iterations
    @warmup_iterations ||= Integer(params[:warmup_iterations] || DEFAULT_WARMUP_ITERATIONS)
  end

  DEFAULT_BENCHMARK_TIME_DURATION = 5.seconds

  def benchmark_time_duration
    @benchmark_time_duration ||= Float(params[:benchmark_time_duration] || DEFAULT_BENCHMARK_TIME_DURATION.to_f)
  end

  DEFAULT_BENCHMARK_MEMORY_ITERATIONS = 5

  def benchmark_memory_iterations
    @benchmark_memory_iterations ||= Integer(params[:benchmark_memory_iterations] || DEFAULT_BENCHMARK_MEMORY_ITERATIONS)
  end

  def render_main_view!
    render :action => 'index', :locals => @_locals_to_pass, :layout => false
  end

  def warmup!
    warmup_iterations.times { render_main_view! }
  end

  def prepare!(options = { })
    options.assert_valid_keys(:skip_warmup_iterations)

    set_random!
    @_locals_to_pass = prepare_for_benchmark_and_return_locals || { }
    warmup! unless options[:skip_warmup_iterations]
  end
end
