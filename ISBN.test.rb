require "minitest/autorun"
require_relative "ISBN.rb"

class TestISBN < Minitest::Test
	def ISBN_only_valid_with_ten_or_thirteen_numbers
	assert_equal(false,generate_valid_isbn.length == 9)
	assert_equal(false,generate_valid_isbn.length == 11)
	end
end 
