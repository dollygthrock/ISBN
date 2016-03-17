require "isbn_kata.rb"    

isbn_numbers = CSV.read('input_isbn_file.csv')
CSV.foreach('input_isbn_file.csv') do #go through each item in the spreadsheet
CSV.parse(File.read('input_isbn_file.csv'))#read: from a file; parse: from a string object
 end
