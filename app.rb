require 'sinatra'
require_relative 'isbn_kata.rb'

get '/' do
	erb :isbn, :locals => {:validity => ""}
end
post '/input' do
	number = params[:input]
	validity = valid_isbn(number)
	if validity == false
		erb :isbn,:locals => {:validity => "This is an INVALID ISBN number."}
	else
		validity == true
		erb :isbn,:locals => {:validity => "This is a VALID ISBN number."}
	end
end 