# Computes the Hamming distance of two DNA strands
class Hamming

  def self.check_lengths(strand1, strand2)
    if strand1.length != strand2.length
      fail ArgumentError, 'Strands are not of equal length.'
    end
  end

  def self.compute(strand1, strand2)
    check_lengths(strand1, strand2)
    count = 0
    strand1.chars.each.with_index do |n, i|
      count += 1 if n != strand2[i]
    end
    count
  end
end
