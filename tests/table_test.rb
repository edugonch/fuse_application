require 'minitest/autorun'
require_relative '../models/table'
require_relative 'support/static_tables'

class PrimeGeneratorTest < Minitest::Test
  def setup
  end

  def test_the_first_2_primes_are_generated_table
    table = MultiplicationPrimesTable::Table.new(2)
    assert_equal StaticTables.first_2_primes, table.rows
  end

  def test_the_first_5_primes_are_generated_table
    table = MultiplicationPrimesTable::Table.new(5)
    assert_equal StaticTables.first_5_primes, table.rows
  end

  def test_the_first_10_primes_are_generated_table
    table = MultiplicationPrimesTable::Table.new(10)
    assert_equal StaticTables.first_10_primes, table.rows
  end
end