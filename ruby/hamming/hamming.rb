# Computes the Hamming distance of two DNA strands
class Hamming
  def self.compute(strand1, strand2)
    strand1 = strand1.chars
    strand2 = strand2.chars
    count = 0

    if strand1.count != strand2.count
      fail ArgumentError
      puts 'Strands are not of equal length.'
    end

    strand1.each.with_index do |n, i|
      count += 1 if n != strand2[i]
    end
    count
  end
end
