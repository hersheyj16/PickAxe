require_relative 'words_from_string'
require 'test/unit'

class TestWordsFromString < Test::Unit::TestCase
	def test_empty_string
		assert_equal([], words_from_string(""))
		assert_equal([], words_from_string("    "))
	end

	def test_single_word
		assert_equal(["a"], words_from_string(" a   "))
		assert_equal(["a"], words_from_string("a"))
	end

	def test_many_words
		assert_equal(["a","b","c","d"], words_from_string("a b c d"))
	end
end
