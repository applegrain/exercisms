class Squares
  def initialize(num)
    @num = num
    @numbers = 0.upto(@num)
  end

  def square_of_sums
    @square_of_sums = (@numbers.reduce(:+))**2
  end

  def sum_of_squares
    @sum_of_squares = @numbers.reduce { |t, n| t + (n**2) }
  end

  def difference
    square_of_sums - sum_of_squares
  end
end
