class Grains

  def self.square(number)
    1 if number == 1
    array = [*2..number]
    array.inject(1) do |sum|
      sum = sum * 2
    end
  end

  def self.total
    array = (1..64).inject([]) do |array, int|
      array << self.square(int)
    end.inject(:+)
  end
end
