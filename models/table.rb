require_relative '../util/primes'

module MultiplicationPrimesTable
  # Table model, this class storage the table rows and columns
  class Table
    attr_accessor :primes, :rows, :limit

    def initialize(limit)
      @limit = limit
      @primes = Primes.generate_primes_to(@limit)
      generate_rows
    end

    def generate_rows
      # I only need the index
      # I don't use each with index b/c it generates 2 extra inodes
      # in the c implementation
      # this will increase the use of memory
      @rows = []
      (0..(@primes.count - 1)).each do |index|
        @rows << generate_multiplication_row(index)
      end
    end

    private

    def generate_multiplication_row(row_number)
      @primes.map { |x| x * @primes[row_number] }
    end
  end
end
