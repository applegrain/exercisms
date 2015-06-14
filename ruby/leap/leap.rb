class Year

  def self.leap?(year)
    if div_by?(year, 4)
      if div_by?(year, 100) && div_by?(year, 400)
        true
      elsif div_by?(year, 100)
        false
      else
        true
      end
    else
      false
    end
  end

  def self.div_by?(year, num)
    year % num == 0
  end
end
