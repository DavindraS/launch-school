# convert a string to a number
def string_to_integer(number_string)
  integer_array = []
  number_string.chars.each.with_index do |number, index|
    case number
    when '1' then integer_array[index] = 1
    when '2' then integer_array[index] = 2
    when '3' then integer_array[index] = 3
    when '4' then integer_array[index] = 4
    when '5' then integer_array[index] = 5
    when '6' then integer_array[index] = 6
    when '7' then integer_array[index] = 7
    when '8' then integer_array[index] = 8
    when '9' then integer_array[index] = 9
    when '0' then integer_array[index] = 0
    end
  end

  p integer_array
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
