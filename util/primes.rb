module MultiplicationPrimesTable
  # Module that contains prime numbers generation functions
  module Primes
    def self.primes_seed
      [2, 3, 5, 7]
    end

    def self.generate_primes_to(n)
      primes = Primes.primes_seed
      return primes.take(n) if n <= 4
      index = primes.last + 2
      loop do
        primes << index if Primes.prime?(primes, index)
        # Only Odd numbers,
        # even numbers greater than 2 are not prime
        index += 2
        break if primes.count >= n
      end
      primes
    end

    def self.prime?(primes, index)
      # We only need to look up the smaller factor,
      # the smaller factor is small than the square root of the number
      smaller_factor_limit = Math.sqrt(index).round
      primes.each do |p|
        break if p > smaller_factor_limit
        if (index % p).zero?
          return false
        end # end if
      end # end each
      true
    end
  end
end
