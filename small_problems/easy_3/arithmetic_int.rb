puts 'Enter the first number:'
num1 = gets.chomp.to_i
puts 'Enter the second number:'
num2 = gets.chomp.to_i

def perform_op(num_one, num_two, operation)
  case operation
  when '+' then num_one + num_two
  when '-' then num_one - num_two
  when '*' then num_one * num_two
  when '/' then num_one / num_two
  when '%' then num_one % num_two
  when '**' then num_one**num_two
  end
end

op_arr = ['+', '-', '*', '/', '%', '**']

op_arr.each do |op|
  puts "==> #{num1} #{op} #{num2} = #{perform_op(num1, num2, op)}"
end
