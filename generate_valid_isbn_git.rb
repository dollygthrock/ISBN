def generate_valid_isbn
  prefix = 978.to_s # must be 978 or 979
  registration_group_element = rand(10).to_s
  registrant_element = (rand(90000) + 10000).to_s
  publication_element = (rand(900) + 100).to_s
  _isbn = prefix + registration_group_element + registrant_element + publication_element
  check_digit = 0
  i = 0
  _isbn.each_char do |letter|
    i+= 1
    letter = letter.to_i
    if i % 2 == 0
      check_digit += letter * 3
    else
      check_digit += letter
    end
  end
  rem = check_digit % 10
  if rem == 0
    check_digit = 0
  else
    check_digit = 10 - rem
  end

 puts _isbn + check_digit.to_s
end