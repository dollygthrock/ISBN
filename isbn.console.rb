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
						array_10 = ["0","1","2","3","4","5","6","7","8","9","0","x","X"," ","-"]
							isbn_10_to_validate = array_10.sample
							while isbn_10_to_validate.count <= 11 do
								isbn_10_to_validate + array_10.sample
							end 
						result_10 = valid_isbn(isbn_10_to_validate)
						puts result_10
					end
					else answer_type == "13"
						array_13 = ["0","1","2","3","4","5","6","7","8","9","0"]
						isbn_13_to_validate = array_13[rand(array_13.split(""))]
						if result_13 = valid_isbn(isbn_13_to_validate)
						puts result_13
					end
			end
	end


							


