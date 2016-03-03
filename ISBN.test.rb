require "minitest/autorun"
require_relative "ISBN.rb"

class TestISBN < Minitest::Test

	def test_string_without_10_or_13_numbers
	assert_equal(false,valid_isbn?(""))
	assert_equal(false,valid_isbn?("123456789123"))
	assert_equal(false,valid_isbn?("12345678912345"))
	end

	def test_valid_10_isbn_number_returns_true
	assert_equal(true,valid_isbn?("0471958697"))
	end

end 
