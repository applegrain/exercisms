class Robot

  attr_reader :name

  def name
    @name ||= "#{letters}#{numbers}"
  end

  def letters
    ('A'..'Z').to_a.sample(2).join
  end

  def numbers
    rand(100..999)
  end

  def reset
    @name = nil
  end

end
