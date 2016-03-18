require 'csv' 

input = CSV.read('input_isbn_file.csv')
CSV.foreach('input_isbn_file.csv') do |row|
	puts row.inspect
CSV.parse(File.read('input_isbn_file.csv'))
end
