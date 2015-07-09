#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'

require_relative 'food_chain'

class FoodChainTest < Minitest::Test
  # This test is an acceptance test.
  #
  # If you find it difficult to work the problem with so much
  # output, go ahead and add a `skip`, and write whatever
  # unit tests will help you. Then unskip it again
  # to make sure you got it right.
  # There's no need to submit the tests you write, unless you
  # specifically want feedback on them.
  def test_the_whole_song
    skip
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
    assert_equal expected, FoodChain.verse(index )
  end

  # This is some simple book-keeping to let people who are
  # giving feedback know which version of the exercise you solved.
  def test_version
    skip
    assert_equal 1, FoodChain::VERSION
  end
end
