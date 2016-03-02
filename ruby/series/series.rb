class Series
  attr_reader :sequence

  def initialize(sequence)
    @sequence = sequence.chars.map(&:to_i)
  end

  def slices(n)
    fail ArgumentError if n > sequence.length
    sequence.each_cons(n).to_a
  end
end
