require_relative "isbn_kata.rb"
puts "Please enter a number to check ISBN validity:"
isbn_input = gets.chomp
result = valid_isbn?(isbn_input)
		if result == true
	puts "Your isbn number is valid."
		else
	puts "This is not a valid ISBN number." 
end
