class FoodChain

  def self.song
    [*0..7].map do |i|
      verse(i) + "\n"
    end.join("\n")
  end

  def self.animals
    [
      {animal: "fly"},
      {animal: "spider", description: "It wriggled and jiggled and tickled inside her."},
      {animal: "bird", description: "How absurd to swallow a bird!"},
      {animal: "cat", description: "Imagine that, to swallow a cat!"},
      {animal: "dog", description: "What a hog, to swallow a dog!"},
      {animal: "goat", description: "Just opened her throat and swallowed a goat!"},
      {animal: "cow", description: "I don't know how she swallowed a cow!"},
      {animal: "horse"}
    ]
  end

  def self.verse(index)
    current = animals[index]
    return last_verse(current) if current[:animal] == "horse"

    opening = self.opening(current[:animal])
    closing = self.closing
    compose_verse(opening, closing, current, index)
  end

  def self.compose_verse(opening, closing, current, index)
    [
      opening,
      description(current),
      middle_lines(index),
      closing
    ].flatten.reject(&:empty?).join("\n")
  end

  def self.description(current)
    current[:animal] == "fly" ? "" : current[:description]
  end

  def self.middle_lines(index)
    lines = [*0..index].reverse.map do |index|
      self.swallowed_animal(animals[index][:animal], animals[index-1][:animal])
    end
    trailing(lines)
  end

  def self.trailing(lines)
    verse = lines.empty? ? "" : lines
    spider_description(verse)
  end

  def self.swallowed_animal(current, previous)
    verse = current == "fly" ? "" : "She swallowed the #{current} to catch the #{previous}."
  end

  def self.spider_description(middle_verse)
    middle_verse.map do |line|
      line[36..-2] == ("spider") ? line.chop + format_spider_description : line
    end
  end

  def self.format_spider_description
    animals[1][:description].gsub("It", " that")
  end

  def self.opening(animal)
    "I know an old lady who swallowed a #{animal}."
  end

  def self.closing
    "I don't know why she swallowed the fly. Perhaps she'll die."
  end

  def self.last_verse(current)
    "I know an old lady who swallowed a #{current[:animal]}.
She's dead, of course!"
  end
end
