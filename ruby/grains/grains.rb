class Grains

  def self.square(number)
    if number == 1
      number
    else
      array = [*1..number]
      sum = 1
      array.reduce do |num|
        sum = sum * 2
      end
    end
  end

  def self.total
    array = (1..64).inject([]) do |array, int|
      array << self.square(int)
    end
    array.reduce(:+)
  end
end
