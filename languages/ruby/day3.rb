module ActsAsCsv
    def self.included(base)
        base.extend ClassMethods
    end

    module ClassMethods
        def acts_as_csv
            include InstanceMethods
        end
    end

    module InstanceMethods
        def read
            @csv_contents = []
            filename = self.class.to_s.downcase + '.txt'
            file = File.new(filename)
            @headers = file.gets.chomp.split(', ')

            file.each do |row|
                @csv_contents << row.chomp.split(', ')
            end
        end

        def each(&block)
            @csv_contents.each {|row| block.call CsvRow.new(@headers, row)}
        end

        attr_accessor :headers, :csv_contents
        def initialize
            read
        end
    end
end

class RubyCsv
    include ActsAsCsv
    acts_as_csv
end

class CsvRow

    attr_accessor :row_hash
    def initialize(row, header)
        @row_hash = header.zip(row).to_h
    end

end

if $PROGRAM_NAME == __FILE__
    m = RubyCsv.new
    puts m.headers.inspect
    puts m.csv_contents.inspect

    csv = RubyCsv.new
    csv.each {|row| puts row.row_hash}
end

