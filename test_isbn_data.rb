require "minitest/autorun"
require_relative "code_to_test_csv.rb"

class TestIsbnData < Minitest::Test

	def test_file_exists
		assert_equal(true, original_csv)
	end 

	 def test_new_file_exists
		assert_equal(true, new_csv)
	 end 
end 