class Complement

  def self.invalid_character(strand, letter)
      if strand.count(letter) != 0
        raise ArgumentError
        puts "Invalid character"
      end
  end

  def self.of_dna(strand)
    if invalid_character(strand, "U")
    else
      strand.tr('GCTA', 'CGAU')
    end
  end

  def self.of_rna(strand)
    if invalid_character(strand, "T")
    else
      strand.tr('GCAU', 'CGTA')
    end
  end
end


