require_relative '../models/table'
require_relative '../decorator/table_decorator'

module MultiplicationPrimesTable
  # Controller for the pint table action
  class TableController
    def print_generated_table(n)
      table = Table.new(n)
      decorator = TableDecorator.new(table)
      puts decorator.table_to_print.to_s
    end
  end
end
