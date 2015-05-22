class Raindrops

  def self.convert(num)
    rainsounds = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
    }

    string = ''
    rainsounds.each do |(key, value)|
      if num % key == 0
        string << value
        end
      end
    if string.empty?
      num.to_s
    else
      string
    end
  end
end

