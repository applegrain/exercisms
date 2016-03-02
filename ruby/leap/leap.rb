class Year

  def self.leap?(year)
    div_by?(year, 400) || div_by?(year, 4) && !div_by?(year, 100)
  end

  def self.div_by?(year, num)
    year % num == 0
  end
end
