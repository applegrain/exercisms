class Sieve
  attr_reader :numbers_array

  def initialize(endpoint)
    @numbers_array= [*2..endpoint]
  end

  def primes
    numbers_array.inject([]) do |primes, number|
      primes.push(number) if !number_divisible_by_a_prime(primes, number)
      primes
    end
  end

  def number_divisible_by_a_prime(primes, number)
    primes.any? { |prime| number % prime == 0 }
  end
end