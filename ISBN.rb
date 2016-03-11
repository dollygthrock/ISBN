def delete_spaces_and_hyphens(isbn_string)
	string_without_spaces = isbn_string.delete(" ")
	string_without_spaces_or_hyphens = string_without_spaces.delete("-")
end
#deleting spaces and hyphens from the isbn number

def valid_isbn?(isbn_string)
	string_without_spaces_or_hyphens = delete_spaces_and_hyphens(isbn_string)
	string_without_spaces_or_hyphens.length == 10
end
#once the spaces and hyphens are deleted, is length equal to 10

def contains_x(isbn_string)
	isbn_number_array = isbn_string.split(//,)
	if isbn[9] == "x" || isbn[10] == "X"
		isbn[9] == 10
	end
	isbn_number_array
#seeing if the last index is either an uppercase or a lowercase x; 
# x or X should be in the index spot of 9; then make it equal to 10
end

def check_digit_13_is_valid(isbn_string)
	array = []
	isbn_string = isbn_string.split("")
		isbn_string.each do [value]
		array << value.to_i
end

sum = 0
check_digit = 0

array.each_with_index do |value,index|

break if index == 12
	if index % 2 == 0
		sum += value * 1
	else
		sum += value * 3
	end
end

sum = sum % 10
check_digit = (10 - sum)
	if isbn_string[12] == 10
		check_digit = 0
	end
array[12] == check_digit
end


def check_digit_is_10_is_valid(isbn_string)
	array = []
	isbn_string = contains_x(isbn_string)
	isbn_string.each do [value]
	array << value.to_i
end
# so now it's checking what is in each index of the string and 
#pushing it to an integer??? I feel like that push value needs
#something in between as didn't work for me??? Set to the carrots instead


sum = 0

array.each.with_index do |value,index|

break if index == 9
	sum += value * (index +1)
end


#once it gets to the ninth position, the loop should break
#I don't understand what += does: so, it adds the operand on the right 
#to the one on the left, then assigns that resulting value to
#to the operand on the left? 
# so if my value is 1 at the first index which is really 0, first 
#time through is 1 * (0 + 1); next time through at second index which
#would be 1, and  if number
#is 5, say, what happens in English?  

check_digit = sum % 11
if check_digit == array[9]
	true
else
	false
end
#?? 


end




