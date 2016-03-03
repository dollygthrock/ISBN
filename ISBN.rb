def valid_isbn?(isbn_string)
	string_without_spaces = isbn_string.delete(" ")
	string_without_spaces.length == 10
end


