puts 'Please enter an integer greater than 0:'
number = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  puts (1..number).inject(:+)
elsif operation = 'p'
  puts (1..number).inject(:*)
end
