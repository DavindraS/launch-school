# converting a number to a string
def integer_to_string(number)
  result = number.digits.reverse.join
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
