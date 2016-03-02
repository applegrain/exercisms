#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'

require_relative 'food_chain'

class FoodChainTest < Minitest::Test
  def test_the_whole_song
    song_file = File.expand_path('../song.txt', __FILE__)
    expected = IO.read(song_file)
    assert_equal expected, FoodChain.song
  end

  def test_it_has_an_array_of_animals
    assert FoodChain.animals
  end

  def test_it_has_an_opening_line
    animal = "fly"
    expected = "I know an old lady who swallowed a #{animal}."

    assert_equal expected, FoodChain.opening(animal)
  end

  def test_it_has_a_closing_line
    expected = "I don't know why she swallowed the fly. Perhaps she'll die."
    assert_equal expected, FoodChain.closing
  end

  def test_it_generates_the_first_verse
    expected = "I know an old lady who swallowed a fly.\nI don't know why she swallowed the fly. Perhaps she'll die."
    index = 0
    assert_equal expected, FoodChain.verse(index)
  end

  def test_it_generates_the_second_verse
    expected =%{I know an old lady who swallowed a spider.
It wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.}
    index = 1
    assert_equal expected, FoodChain.verse(index)
  end

  def test_it_generates_the_third_verse
    expected =%{I know an old lady who swallowed a bird.
How absurd to swallow a bird!
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.}
    index = 2
    assert_equal expected, FoodChain.verse(index)
  end

  def test_it_generates_the_fourth_verse
    expected =%{I know an old lady who swallowed a cat.
Imagine that, to swallow a cat!
She swallowed the cat to catch the bird.
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.}
    index = 3
    assert_equal expected, FoodChain.verse(index)
  end

  def test_it_generates_the_fifth_verse
    expected =%{I know an old lady who swallowed a dog.
What a hog, to swallow a dog!
She swallowed the dog to catch the cat.
She swallowed the cat to catch the bird.
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.}
    index = 4
    assert_equal expected, FoodChain.verse(index)
  end

  def test_it_generates_the_sixth_verse
    expected =%{I know an old lady who swallowed a goat.
Just opened her throat and swallowed a goat!
She swallowed the goat to catch the dog.
She swallowed the dog to catch the cat.
She swallowed the cat to catch the bird.
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.}
    index = 5
    assert_equal expected, FoodChain.verse(index)
  end

  def test_it_generates_the_seventh_verse
    expected =%{I know an old lady who swallowed a cow.
I don't know how she swallowed a cow!
She swallowed the cow to catch the goat.
She swallowed the goat to catch the dog.
She swallowed the dog to catch the cat.
She swallowed the cat to catch the bird.
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.}
    index = 6
    assert_equal expected, FoodChain.verse(index)
  end

  def test_it_generates_the_eigth_verse
    expected =%{I know an old lady who swallowed a horse.
She's dead, of course!}
    index = 7
    assert_equal expected, FoodChain.verse(index)
  end

  # This is some simple book-keeping to let people who are
  # giving feedback know which version of the exercise you solved.
  def test_version
    skip
    assert_equal 1, FoodChain::VERSION
  end
end
