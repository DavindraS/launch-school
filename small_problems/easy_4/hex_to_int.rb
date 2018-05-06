DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15}

def hexadecimal_to_integer(input)
  digits_array = input.chars
  power = digits_array.length
  sum = 0
  digits_array.each do |character|
    power -= 1
    sum += (DIGITS[character.upcase] * 16**power)
  end
  sum
end

puts hexadecimal_to_integer('4D9f') == 19871
puts hexadecimal_to_integer('4f19cfa') == 82943226
