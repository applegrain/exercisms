# Computes the Hamming distance of two DNA strands
class Hamming
  def self.compute(strand1, strand2)
    check_lengths(strand1, strand2)
    strand1.each_char.with_index.count {|n,i| n != strand2[i] }
  end

 private
  def self.check_lengths(strand1, strand2)
    if strand1.length != strand2.length
      fail ArgumentError, 'Strands are not of equal length.'
    end
  end
end
