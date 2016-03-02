class PrimeFactors

  def self.for(number)
    primes = []
    divisor = 2
    collect_prime_factors(number, divisor, primes)
  end

  def self.collect_prime_factors(number, divisor, primes)
    while number > 1
      while number % divisor == 0
        primes << divisor
        number /= divisor
      end
      divisor += 1
    end
    primes
  end
end
