class Pangram
  def self.is_pangram?(str)
    str.gsub(/[^a-zA-Z]/, '').downcase.split('').uniq.length == 26
  end
end

module BookKeeping
  VERSION = 2
end
