def delete_spaces_and_hyphens(isbn_string)
	string_without_spaces = isbn_string.delete(" ")
	string_without_spaces_or_hyphens = string_without_spaces.delete("-")
end




def valid_isbn?(isbn_string)
	string_without_spaces_or_hyphens = delete_spaces_and_hyphens(isbn_string)
	string_without_spaces_or_hyphens.length == 10
end



