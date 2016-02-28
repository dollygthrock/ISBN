def generate_valid_isbn(isbn)
	isbn.split(",").map{|s|s.to_i}
	if isbn.length == 10
	puts isbn
	else
	end
end


generate_valid_isbn(1,2,3,4,5,6,7,8,9,0)