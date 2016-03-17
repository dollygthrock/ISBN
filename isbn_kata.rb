

def valid_isbn(input_string)
	remove_invalid_characters(input_string)
	correct_length?(input_string)
end


def remove_invalid_characters(input_string)
	input_string.delete!(" ")
	input_string.delete!("-")
end


def convert_string_to_array(string)
	string.split("")
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


def non_numeric_characters?(invalid_string)
		if invalid_string[0...8] =~ /\D/
			false
		else 
			true
		end
end 


def valid_isbn13?(string)
	isbn_array_13 = convert_string_to_array(string)
	converted_array =  multiply_array(isbn_array_13)
	summed_array = sum_of_items(converted_array)
	item_array = subtraction_of_ten(summed_array)
	if item_array == string[-1].to_i
		true
	else
		false
	end
end
 

def isbn10(string)
	product = 0
	isbn_array_10 = convert_string_to_array(string)
	isbn_array_10.each_with_index do|value,index|
		value = value.to_i
		break if index == 9
		product += value * (index + 1)
	end
	product
end


def isbn10_mod_11(number)
	checksum = number % 11
end


def valid_isbn10?(number)
	product = isbn10(number)
	checksum = isbn10_mod_11(product)
		if checksum == 10 && number[-1].upcase == "X"
			true
		elsif checksum == number[-1].to_i
			true
		else
			false
		end

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
	items_to_be_summed = array_of_numbers.length - 1 
	array_of_numbers.each_with_index do |value,index|
		break if index == items_to_be_summed
		sum = sum + value
	end
	sum
end


def subtraction_of_ten(number)
 	 result = number % 10
 	 mod_result = 10 - result
 	 final_result = mod_result % 10
end





