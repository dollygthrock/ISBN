def valid_isbn?(isbn_string)
	string_without_spaces = isbn_string.delete(" ")
	string_without_spaces_or_hyphens = string_without_spaces.delete("-")
	string_without_spaces_or_hyphens.length == 10
end


