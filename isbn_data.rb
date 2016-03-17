require_relative "isbn_kata.rb"    

csv_text = File.read("input_isbn_file.csv")
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Moulding.create!(row.to_hash)
