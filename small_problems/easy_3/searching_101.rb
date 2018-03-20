def translate_num(number)
  case number
  when 1 then '1st'
  when 2 then '2nd'
  when 3 then '3rd'
  when 4 then '4th'
  when 5 then '5th'
  end
end

numbers = Array.new(5)

def get_numbers(numbers_array)
  numbers_array.collect!.with_index do |x, i|
    puts "==> Please enter the #{translate_num(i + 1)} number:"
    x = gets.chomp.to_i
  end
end

get_numbers(numbers)
puts '==> Enter the last number:'
search_num = gets.chomp.to_i

if numbers.include?(search_num)
  puts "The number #{search_num} appears in #{numbers}."
else
  puts "The number #{search_num} does not appear in #{numbers}."
end
