class Raindrops

  def self.convert(num)
    rainsounds = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
    }

    sounds = rainsounds.each_with_object(Array.new) do |(factor, word), drops|
      drops << word if num % factor == 0
    end.join
    sounds.empty? ? num.to_s : sounds
  end
end
