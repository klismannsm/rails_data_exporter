module DataExporter
  class ExampleExportModel
    def initialize(example)
      @example = example
    end

    def export_header
      ['Code', 'Name', 'Random Number', 'Created At', 'Updated At']
    end

    def export
      [code, name, random_number, created_at, updated_at]
    end

    private

    def code
      @example.code
    end

    def name
      @example.name
    end

    def random_number
      @example.random_number
    end

    def created_at
      @example.created_at
    end

    def updated_at
      @example.updated_at
    end
  end
end
