require_relative "isbn_kata.rb"
require 'csv' 

file = File.open("duplicate_isbn_examples.csv", "w")
CSV.foreach('input_isbn_file.csv') do |row|
	if row[0] == "ITEM"
		isbn_check = "CHECKS"
	elsif valid_isbn(row[1]) == true
		isbn_check = "VALID"
	else
		isbn_check = "INVALID"
	end
	file << row[0] + ", " + row[1]+ ", " + isbn_check + "\n"
		
end
file.close
