class ::<%= controller_name.camelize %>ControllerBase < ApplicationController
  # >  # -- helps with syntax highlighting under Sublime

  def rendered_html
    prepare!(:skip_warmup_iterations => true)
    render_main_view!
  end

  def benchmark_time
    prepare!

    GC.disable if disable_gc_during_time

    start_time = Time.now
    end_time = start_time + time_duration
    count = 0

    while Time.now < end_time
      render_main_view!
      count += 1
    end
    end_time = Time.now

    GC.enable

    render :json => { :count => count, :time => (end_time.to_f - start_time.to_f) }
  end

  def benchmark_memory
    prepare!

    GC.start(:full_mark => true, :immediate_sweep => true)
    GC.disable
    start_stats = GC.stat

    memory_iterations.times do
      render_main_view!
    end

    end_stats = GC.stat
    GC.enable

    render :json => { :count => memory_iterations, :start_gc_stats => start_stats, :end_gc_stats => end_stats }
  end

  private
  def random_seed
    @random_seed ||= Integer(params[:random_seed] || (raise "You must supply :random_seed"))
  end

  def set_random!
    srand(random_seed)
  end

  def warmup_iterations
    @warmup_iterations ||= Integer(params[:warmup_iterations] || (raise "You must supply :warmup_iterations"))
  end

  def time_duration
    @time_duration ||= Float(params[:time_duration] || (raise "You must supply :time_duration"))
  end

  def memory_iterations
    @memory_iterations ||= Integer(params[:memory_iterations] || (raise "You must supply :memory_iterations"))
  end

  def disable_gc_during_time
    @disable_gc_during_time ||= (params[:disable_gc_during_time] ? :yes : :no)
    @disable_gc_during_time == :yes
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
    unless @_locals_to_pass.kind_of?(Hash)
      raise "Controller code returned not a Hash, but: #{@_locals_to_pass.inspect}"
    end
    warmup! unless options[:skip_warmup_iterations]
  end
end
