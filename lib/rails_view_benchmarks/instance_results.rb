module RailsViewBenchmarks
  class InstanceResults
    def initialize(benchmark_alias, engine_alias)
      @benchmark_alias = benchmark_alias
      @engine_alias = engine_alias
    end

    def rendered_html=(html)
      @rendered_html = html
    end

    def time_results=(json_hash)
      @time_results = json_hash
    end

    def memory_results=(json_hash)
      @memory_results = json_hash
    end

    def save_rendered_html_under!(directory)
      raise "You must have rendered HTML first" unless @rendered_html

      path = File.join(directory, @benchmark_alias.name, "#{@engine_alias.name}.html")
      FileUtils.mkdir_p(File.dirname(path))
      File.open(path, 'w') { |f| f << @rendered_html }
    end

    def to_s
      out = [ ]
      out << "#{ActiveSupport::NumberHelper.number_to_delimited(@rendered_html.length)} bytes of HTML" if @rendered_html
      out << ("%.2f ms/iteration" % time_ms_per_iteration) if @time_results
      out << ("#{ActiveSupport::NumberHelper.number_to_delimited(objects_per_iteration.round)} objects/iteration") if @memory_results
      out.join(", ")
    end

    private
    attr_reader :benchmark_alias, :engine_alias

    def time_ms_per_iteration
      if @time_results
        (@time_results['time'].to_f * 1000.0) / (@time_results['count'].to_f)
      end
    end

    def objects_per_iteration
      if @memory_results
        count = @memory_results['count']
        objects_total = nil

        start_stats = @memory_results['start_gc_stats']
        end_stats = @memory_results['end_gc_stats']

        unless start_stats && end_stats
          raise "Memory statistics has neither start_gc_stats nor end_gc_stats?\n#{@memory_results.inspect}"
        end

        %w{heap_live_slots}.each do |object_count_name|
          if (start_value = @memory_results['start_gc_stats'][object_count_name]) &&
            (end_value = @memory_results['end_gc_stats'][object_count_name])
            objects_total ||= (Integer(end_value) - Integer(start_value))
          end
        end

        (objects_total.to_f / count.to_f) if objects_total
      end
    end
  end
end
