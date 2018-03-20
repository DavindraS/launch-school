puts "Enter the first number:"
first_num = gets.chomp.to_i
puts "Enter the secon number:"
second_num = gets.chomp.to_i

def perform_op(num_one, num_two, operation)
  case operation
  when '+' then num_one + num_two
  when '-' then num_one - num_two
  when '*' then num_one * num_two
  when '/' then num_one / num_two
  when '%' then num_one % num_two
  when '**' then num_one ** num_two
  end
end

op_arr = ['+', '-', '*', '/', '%', '**']

op_arr.each do |op|
  puts "==> #{first_num} #{op} #{second_num} = #{perform_op(first_num, second_num, op)}"
end
