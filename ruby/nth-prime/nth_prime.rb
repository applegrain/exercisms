class Prime

  def self.nth(num)
    array = []
    int = 2
    verify_input(num)

    until array.size == num
      array << int if self.is_prime?(int)
      int += 1
    end
    array.last
  end

  def self.is_prime?(int)
    limit = int / 2
    (2..limit).none? { |x| int % x == 0 }
  end

  def verify_input(num)
    fail ArgumentError if num == 0
    "0 is not a prime number."
  end
end
