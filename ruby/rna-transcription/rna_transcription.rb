class Complement

  def self.of_dna(strand)
    require 'pry'; binding.pry
    if strand.count("U") != 0
      raise ArgumentError
    else
      strand.tr('GCTA', 'CGAU')
    end
  end

  def self.of_rna(strand)
    if strand.count("T") != 0
      raise ArgumentError
    else
    strand.tr('GCAU', 'CGTA')
    end
  end
end
