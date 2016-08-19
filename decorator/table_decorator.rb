require 'terminal-table'

module MultiplicationPrimesTable
  # TableDecorator will format the table ready for printing
  class TableDecorator
    attr_accessor :table, :table_to_print

    def initialize(table)
      @table_to_print = Terminal::Table.new do |t|
        t << get_formated_row(table.primes, '')
        t << :separator
        index = 0
        table.rows.each do |row|
          t << get_formated_row(row, table.primes[index])
          t << :separator if index < (table.rows.count - 1)
          index += 1
        end
      end
    end

    def get_formated_row(row, first_column)
      ([first_column] + row)
    end

    private

    def build_style
      { border_x: '=', border_i: '|' }
    end
  end
end
