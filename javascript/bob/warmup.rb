class Word

  def initialize
    @words = "SHENANIGANS SALTY YOUNGSTER ROUND DOUBLET TERABYTE ESSENCE".split  # => ["SHENANIGANS", "SALTY", "YOUNGSTER", "ROUND", "DOUBLET", "TERABYTE", "ESSENCE"]
  end

  def print_words
    @words.each_with_index do |word, index|
      word = word.reverse if index.odd?
        puts word.rjust(spacing(word, index))
    end
  end

  def spacing(word, index)
    if index == 0
      0
    else
      @words[index - 1].length
    end
  end
end

snake = Word.new
snake.print_words
