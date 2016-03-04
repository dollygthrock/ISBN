def delete_spaces_and_hyphens(isbn_string)
	string_without_spaces = isbn_string.delete(" ")
	string_without_spaces_or_hyphens = string_without_spaces.delete("-")
end


def valid_isbn?(isbn_string)
	string_without_spaces_or_hyphens = delete_spaces_and_hyphens(isbn_string)
	string_without_spaces_or_hyphens.length == 10
end

def contains_x(isbn_string)
	isbn_number_array = isbn.split(//,)
	if isbn[9] == "x" || isbn[10] == "X"
		isbn[9] == 10
	end
	isbn_number_array
end

def check_last_digit_is_x_is_valid(isbn_string)
	array = []
	isbn_string.each do [value]
	array.push value.to_i
end

sum = 0
array.each.with_index do |value,index|
break if index == 9
	sum += value * (index +1)
end

check_digit = sum % 11
if check_digit == array[9]
	true
else
	false
end

check_digit == array [9]

end

end




