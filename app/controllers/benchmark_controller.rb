require 'benchmarker'

class BenchmarkController < ApplicationController
  MICROSECONDS_PER_SECOND = 1_000_000

  def benchmark_place_page
    @place = "San Francisco"

    benchmark!({ })
  end

  private
  def benchmark!(locals)
    benchmarker = Benchmarker.new

    engine = params[:engine]
    desired_runtime = Float(params[:desired_runtime] || 1.0)

    benchmark = nil
    if action_name =~ /^benchmark_(.+)$/i
      benchmark = $1
    else
      raise "Can't parse benchmark from action name: #{action_name.inspect}!"
    end

    @partial_base = "benchmark/#{benchmark}/#{engine}".freeze

    template = "#{@partial_base}/#{benchmark}".freeze
    @render_args = { :template => template, :locals => locals }
    @measure_count ||= 25

    benchmarker.go! { render @render_args }

    render :text => "Benchmark '#{benchmark}', engine #{engine}: #{benchmarker.to_s}"
  end
end
