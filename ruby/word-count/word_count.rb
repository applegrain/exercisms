class Phrase

  attr_accessor :words, :counter

  def initialize(words)
    @words = words
    @counter = Hash.new(0)
  end

  def word_count
    r = remove_regex
    p = remove_punctuation(r)
    s = remove_special_chars(p)
    c = count_instances(s)
  end

  def remove_regex
    words.split(/[^a-zA-Z\d.']/)
  end

  def remove_punctuation(words)
    words.map {|word| word.delete('.') }
  end

  def remove_special_chars(words)
    words.map { |word| word.gsub(/[^a-zA-Z\d.']/, '') }.reject(&:empty?)
  end

  def count_instances(words)
  @counts ||= words.each { |word| counter[word.downcase] += 1 }
   counter
 end
end
