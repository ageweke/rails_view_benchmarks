module RailsViewBenchmarks
  class CsvOutputFile
    def initialize(path)
      @path = path
      @csv = nil
    end

    def open(&block)
      FileUtils.mkdir_p(File.dirname(path))
      CSV.open(path, 'wb') do |csv|
        @csv = csv
        block.call(self)
      end
    end

    def write(rows)
      rows.each { |r| csv << r }
    end

    private
    attr_reader :path, :csv
  end
end
