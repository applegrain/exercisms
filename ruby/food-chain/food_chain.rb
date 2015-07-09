class FoodChain

  def self.animals
     [
      {animal: "fly"},
      {animal: "spider", description: "It wriggled and jiggled and tickled inside her."},
      {animal: "bird", description: "How absurd to swallow a bird!"}
      # {animal => cat}
      # {animal => dog}
      # {animal => goat}
      # {animal => cow}
      # {animal => horse}
    ]
  end
  def self.verse(index)
    current = animals[index]
    opening = self.opening(current[:animal])
    closing = self.closing

    [
      opening,
      description(current),
      generate_middle_part(index),
      closing
    ].reject(&:empty?).join("\n")
  end

  def self.description(current)
    current[:animal] == "fly" ? "" : current[:description]
  end

  def self.generate_middle_part(index)
    lines = (0...index).map do |index|
      self.swallowed_animal(animals[index][:animal], animals[index-1][:animal])
    end
    lines.empty? ? "" : lines
  end

  def self.swallowed_animal(current, previous)
    current == "fly" ? "" : "She swallowed the #{current} to catch the #{previous}."
  end

  def self.opening(animal)
    "I know an old lady who swallowed a #{animal}."
  end

  def self.closing
    "I don't know why she swallowed the fly. Perhaps she'll die."
  end
end
