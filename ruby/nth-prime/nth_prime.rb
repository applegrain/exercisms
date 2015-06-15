class Prime

  def verify_input(num)
    fail ArgumentError if num == 0
    "0 is not a prime number."
  end

  def self.nth(num)
    verify_input(num)
    primes = [2]
    int = 3

    until primes.size == num
      primes << int if self.prime?(int)
      int += 1
    end
    primes.last
  end

  def self.prime?(int)
    limit = Math.sqrt(int).ceil
    (2..limit).none? { |x| int % x == 0 }
  end

end
