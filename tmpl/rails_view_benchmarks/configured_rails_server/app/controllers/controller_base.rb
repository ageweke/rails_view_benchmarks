class ::<%= controller_name.camelize %>ControllerBase < ApplicationController
  def rand
    raise "You should never use rand() in benchmark code; instead, use the Random instance available as @random/random"
  end

  def random
    @random || raise("No random has been set yet, somehow")
  end

  DEFAULT_RANDOM_SEED = 1

  def random_seed
    @random_seed = params[:srand] || DEFAULT_RANDOM_SEED
  end

  def set_random!
    @random = Random.new(random_seed)
  end

  def rendered_html
    locals = prepare_for_benchmark_and_return_locals || { }
    render :action => 'index', :locals => locals, :layout => false
  end
end
