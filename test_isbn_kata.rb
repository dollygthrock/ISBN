require 'minitest/autorun'
require_relative 'isbn_kata.rb'

class TestIsbnChecker < Minitest::Test

	def test_string_without_10_or_13_numbers
		assert_equal(false, valid_isbn(""))
		assert_equal(false, valid_isbn("123456789123"))
		assert_equal(false, valid_isbn("12345678912345"))
	end

	def test_valid_isbn10_returns_true
		assert_equal(true, valid_isbn("0471958697"))
	end

	def test_valid_isbn10_with_spaces_returns_true
		assert_equal(true, valid_isbn("047 1958 697"))
	end

	def test_valid_isbn10_with_hyphens_returns_true
		assert_equal(true, valid_isbn("0-321-14653-0"))
	end

	def test_valid_isbn10_with_spaces_and_hyphens_returns_true
		assert_equal(true, valid_isbn(" 047-1958 697-"))
	end

	def test_valid_isbn13_returns_true
		assert_equal(true, valid_isbn("9780470059029"))
	end

	def test_valid_isbn13_with_spaces_and_hyphens_returns_true
		assert_equal(true, valid_isbn("-9  7---80470059029"))
		assert_equal(true, valid_isbn("978-0-13-149505-0"))
		assert_equal(true, valid_isbn("978 0 471 48648 0"))
	end

	def test_invalid_isbn13_returns_false
		assert_equal(false, valid_isbn("4780470059029"))
	end

	def test_convert_string_to_array_of_characters
		assert_equal(["1","2","3","4","5","6","7"],convert_string_to_array("1234567"))
	end

	def test_multiply_array_by_1_and_3
		assert_equal([1,3,1,3,1,3], multiply_array(["1","1","1","1","1","1"]))
		assert_equal([2,9,4,15,6], multiply_array(["2","3","4","5","6"]))
	end

	def test_sum_all_but_last_items_in_an_array
		assert_equal(6, sum_of_items([1,2,3,4]))
		assert_equal(14,sum_of_items([2,3,4,5,6]))
	end

	def test_modulus_10_subtraction_result
		assert_equal(4,subtraction_of_ten(26))
		assert_equal(0,subtraction_of_ten(10))
	end

	def test_isbn13_checksum
		assert_equal(true, valid_isbn13?("9780470059029"))
		assert_equal(true, valid_isbn13?("9780131495050"))
	end

	def test_isbn10_multiply_sum
		assert_equal(232,isbn10("7421394761"))
	end 

	def test_isbn10_mod_11
		assert_equal(1,isbn10_mod_11(232))
		assert_equal(10,isbn10_mod_11(241))
		assert_equal(4,isbn10_mod_11(532))
	end

	def test_isbn10_containing_x
		assert_equal(true,valid_isbn10?("877195869x"))
		assert_equal(false,valid_isbn10?("877195869$"))
	end

	def test_all_isbn_numbers_valid_or_invalid
		assert_equal(false,valid_isbn("4780470059029"))
		assert_equal(false,valid_isbn("0-321@14653-0"))
		assert_equal(false,valid_isbn(""))
		assert_equal(false,valid_isbn(" "))
		assert_equal(false,valid_isbn("-"))
	end 

	def test_non_numeric_characters
		assert_equal(true,non_numeric_characters?("877195x869"))
	end

	def original_csv
		File.exist?("input_isbn_file.csv")
	end 

	def new_csv
		File.open("duplicate_isbn_examples.csv", 'w')
		File.exist?("duplicate_isbn_examples.csv")
	end

	def test_if_files_are_equal
		assert_equal(false, FileUtils.compare_file("input_isbn_file.csv", "duplicate_isbn_examples.csv"))
	end 





end