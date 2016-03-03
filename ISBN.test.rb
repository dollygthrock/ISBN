require "minitest/autorun"
require_relative "ISBN.rb"

class TestISBN < Minitest::Test
	def test_string_without_10_or_13_numbers
	assert_equal(false,valid_isbn?(""))
	assert_equal(false,valid_isbn?("123456789123"))

	end

end 
