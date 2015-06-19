# Converting and returning DNA/RNA complements
class Complement
  @complements =
  {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  @rna_complements = @complements.invert

  def self.invalid_character(strand, letter)
    fail ArgumentError, 'Invalid character.' if strand.count(letter) != 0
  end

  def self.return_complement(strand, hash)
    strand.chars.map.with_index do |nucleotide, index|
      strand[index].gsub(nucleotide, hash)
    end.join
  end

  def self.of_dna(strand)
    if invalid_character(strand, 'U')
    else
      return_complement(strand, @complements)
    end
  end

  def self.of_rna(strand)
    if invalid_character(strand, 'T')
    else
      return_complement(strand, @rna_complements)
    end
  end
end
