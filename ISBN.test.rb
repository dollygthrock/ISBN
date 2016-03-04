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

	def test_valid_10_isbn_number_with_spaces_is_valid
		assert_equal(true,valid_isbn?("047 19 586 97"))
		assert_equal(true,valid_isbn?("047 19586 97"))
	end

	def test_spaces_do_not_add_to_string_length
		assert_equal(false,valid_isbn?("12345678  "))
	end

	def test_valid_10_isbn_number_with_hyphens_is_valid
		assert_equal(true,valid_isbn?("047-19-586-97"))
		assert_equal(true,valid_isbn?("047-19586-97"))
	end

	def test_valid_10_isbn_number_with_hyphens_and_spaces_is_valid
		assert_equal(true,valid_isbn?("047-19 586-97"))
		assert_equal(true,valid_isbn?("047  19586-97  "))
	end
	
	def test_if_10_isbn_number_has_x_as_last_digit_still_passes
		assert_equal(true,valid_isbn?("123456789x"))
	end

	def test_10_digits_is_valid
		assert_equal(true,check_digit["1","2","8","5","6","5","9","0","X"])
	end



end 
