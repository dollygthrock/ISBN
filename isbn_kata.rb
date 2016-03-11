def valid_isbn?(input_string)
	remove_invalid_characters(input_string)
	correct_length?(input_string)
end

def correct_length?(input_string)
	if input_string.length == 10 
		true
	elsif input_string.length == 13 && valid_isbn13?(input_string)
		true
	else
		false
	end
end

def valid_isbn13?(input_string)
	if input_string[0] == "4"
		false
	else
		true
	end
end

def convert_string_to_array(string)
	string.split("")
end

def multiply_array(input_array)
	array = []
	input_array.each_with_index do |value,index|
		value = value.to_i
		if index % 2 == 0
			array << value * 1 
		else 
			array << value * 3
		end
	end
	array
end 

def sum_of_items(array_of_numbers)
	sum = 0
	array_of_numbers.each do |value|
		sum = sum + value
	end
	sum
end

def sum_of_items_divisible_by_ten(array)
	sum = sum % 10
	check_digit = (10-sum)


def remove_invalid_characters(input_string)
	input_string.delete!(" ")
	input_string.delete!("-")
end



