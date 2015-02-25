module RailsViewBenchmarks
  class CsvOutputFile
    def initialize(path)
      @path = path
      @csv = nil
    end

    def open(&block)
      do_open('wb', &block)
    end

    def append(&block)
      do_open('ab', &block)
    end

    def write(rows)
      rows.each { |r| csv << r }
    end

    private
    attr_reader :path, :csv

    def do_open(mode, &block)
      FileUtils.mkdir_p(File.dirname(path))
      CSV.open(path, mode) do |csv|
        @csv = csv
        block.call(self)
      end
      @csv = nil
    end
  end
end
