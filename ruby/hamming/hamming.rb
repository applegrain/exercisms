class Hamming

  def self.compute(string1, string2)
    string1 = string1.chars
    string2 = string2.chars
    count = 0

    if string1 == string2
      0
    else
      1
    end

  string1.each.with_index do | n, i |
       count+=1 if  n != string2[i]
    end
    count
  end
end
