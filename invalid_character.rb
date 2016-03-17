
puts "Enter a number:"
answer = gets.chomp
	if answer[9].upcase == "X"
	puts "true"
	else answer[0...8] =~ /\D/
	puts "false"
end