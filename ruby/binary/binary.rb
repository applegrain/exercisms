class Binary
  VERSION = 1
  attr_accessor :binary

  def initialize(binary)
    fail ArgumentError unless valid_input?(binary)
    @binary = binary.chars.map(&:to_i).reverse
  end

  def to_decimal
    binary.map.with_index { |num, i| num * (2 ** i) }.reduce(:+)
  end

  def valid_input?(input)
    input.chars.all? { |num| ("01").include?(num) }
  end
end
