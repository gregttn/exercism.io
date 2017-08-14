class Sieve
  attr_reader :max
  def initialize(max)
    @max = max
  end

  def primes
    primes = (0..max).to_a
    primes[0] = primes[1] = nil

    primes.each do |number|
      next unless number
      break if number ** 2 > max

      (number ** 2).step(max, number) { |multiplied| primes[multiplied] = nil }
    end

    primes.compact
  end
end

module BookKeeping
  VERSION = 1
end
