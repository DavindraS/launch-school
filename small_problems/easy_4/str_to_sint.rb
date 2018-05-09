# further exploration
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
  str = []
  if string[0] == '-' || string[0] == '+'
    str = string[1..-1]
  else
    str = string
  end

  signed = string_to_integer(str)
  unsigned = string_to_integer(str)

  case string[0]
  when '-' then -signed
  when '+' then signed
  else          unsigned
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
