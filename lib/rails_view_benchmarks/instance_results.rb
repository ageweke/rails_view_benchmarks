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

    def to_s
      out = [ ]
      out << "#{@rendered_html.length} bytes of HTML" if @rendered_html
      out << ("%.2f ms/iteration" % time_ms_per_iteration) if @time_results
      out << ("%d objects/iteration" % objects_per_iteration) if @memory_results
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
