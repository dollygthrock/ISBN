require_relative "isbn_kata.rb"
puts "Would you like to validate an ISBN?"	
	answer = gets.chomp
	if answer.upcase == "YES" 
		puts "Please enter the number you wish to validate:"
		isbn_input = gets.chomp
		result = valid_isbn(isbn_input)
			if result == true
			puts "Your ISBN number is valid."
			else
			puts "This is not a valid ISBN number." 
			end
	end 
	if answer.upcase == "NO"
		puts "Would you like to have a valid ISBN generated?"
		random_isbn_answer = gets.chomp
			if random_isbn_answer.upcase == "NO"
				puts "Your session has ended."
			elsif random_isbn_answer.upcase == "YES"
				puts "Would you like to generate a 10-digit or a 13-digit ISBN (enter 10 or 13)?"
				answer_type = gets.chomp
					if answer_type == "10"
						array_10 = "0123456789- "
						array_10.sample = isbn_10_to_validate
						sample_to_validate = valid_isbn(isbn_10_to_validate)
						puts sample_to_validate
					end
			end
	end

								


