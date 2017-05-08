require 'csv'

module DataExporter
  class Exporter
    def initialize(objects, format)
      @objects = objects
      @format = format
    end

    def export
      case @format
        when :csv
          export_to_csv
      end
    end

    def export_to_tempfile
      case @format
        when :csv
          export_to_csv_tempfile
      end
    end

    private

    def export_to_csv
      CSV.generate(headers: true, col_sep: ';') do |csv|
        write_data_to_csv(csv)
      end
    end

    def export_to_csv_tempfile(filename_prefix)
      Tempfile.open([filename_prefix, '.csv']) do |csv_tempfile|
        csv_tempfile << export_to_csv
      end
    end

    def write_data_to_csv(csv)
      if @objects.first.respond_to? :export_header
        csv << @objects.first.export_header
      end
      @objects.each do |object|
        csv << object.export
      end
    end
  end
end
