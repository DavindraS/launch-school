DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(number)
  str = ''
  number.digits.reverse.each do |num|
    str << DIGITS[num]
  end
  str
end

def signed_integer_to_string(number)
  str = ''
  if number > 0
    str << '+' << integer_to_string(number)
  elsif number < 0
    str << '-' << integer_to_string(-number)
  else
    str << '0'
  end
  p str
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
