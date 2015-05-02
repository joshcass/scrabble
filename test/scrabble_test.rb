gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
    assert_equal 0, Scrabble.new.score("@")
  end

  def test_it_can_score_a_whole_word
    assert_equal 8, Scrabble.new.score("word")
    assert_equal 25, Scrabble.new.score("zymurgy")
    assert_equal 8, Scrabble.new.score("5word$")
    assert_equal 0, Scrabble.new.score(nil)
  end
end
