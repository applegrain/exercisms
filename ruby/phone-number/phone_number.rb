class PhoneNumber
  attr_accessor :number
  def initialize(number)
    @number = clean_number(number)
  end

  def clean_number(number)
    if number.match(/[a-zA-Z]/)
      return "0000000000"
    end
    number.gsub!(/[^\d]/, '')

    valid_length?(number)
  end

  def valid_length?(number)
    if eleven_digits?(number)
      return number[1..10]
    end

    return "0000000000" if number.length != 10
    number
  end

  def eleven_digits?(number)
    number.length == 11 && number[0] == "1"
  end

  def area_code
    number[0..2]
  end

  def to_s
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
  end
end

