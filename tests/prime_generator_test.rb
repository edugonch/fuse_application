require 'minitest/autorun'
require_relative '../util/primes'
require_relative 'support/static_primes'

class PrimeGeneratorTest < Minitest::Test

  def test_the_first_2_primes_are_generated
    assert_equal StaticPrimes.first_2_primes, MultiplicationPrimesTable::Primes.generate_primes_to(2)
  end

  def test_the_first_5_primes_are_generated
    assert_equal StaticPrimes.first_5_primes, MultiplicationPrimesTable::Primes.generate_primes_to(5)
  end

  def test_the_first_10_primes_are_generated
    assert_equal StaticPrimes.first_10_primes, MultiplicationPrimesTable::Primes.generate_primes_to(10)
  end

  def test_the_first_15_primes_are_generated
    assert_equal StaticPrimes.first_15_primes, MultiplicationPrimesTable::Primes.generate_primes_to(15)
  end

  def test_the_first_45_primes_are_generated
    assert_equal StaticPrimes.first_45_primes, MultiplicationPrimesTable::Primes.generate_primes_to(45)
  end

  def test_the_first_63_primes_are_generated
    assert_equal StaticPrimes.first_63_primes, MultiplicationPrimesTable::Primes.generate_primes_to(63)
  end

  def test_the_first_200_primes_are_generated
    assert_equal StaticPrimes.first_200_primes, MultiplicationPrimesTable::Primes.generate_primes_to(200)
  end

  def test_the_first_1000_primes_are_generated
    assert_equal StaticPrimes.first_1000_primes, MultiplicationPrimesTable::Primes.generate_primes_to(1000)
  end
end