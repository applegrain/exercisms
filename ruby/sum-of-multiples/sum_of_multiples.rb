class SumOfMultiples
  attr_reader :factors
  def initialize(first = 3, second = 5, third = second)
    @factors = [first, second, third]
  end

  def to(limit)
    numbers = [*1..(limit - 1)]
    numbers.select {|num| num % factors[0] == 0 ||
                          num % factors[1] == 0 ||
                          num % factors[2] == 0 }.reduce(:+)
  end

  def self.to(limit)
    return 0 if limit == 1
    numbers = [*1..(limit - 1)]
    numbers.select { |num| multiple_of?(num) }.reduce(:+)
  end

  def self.multiple_of?(num)
    remainder_is?(num, 3) || remainder_is?(num, 5)
  end

  def self.remainder_is?(num, factor)
    num % factor == 0
  end
end
