number = nil
operation = nil

loop do
  loop do
    puts 'Please enter an integer greater than 0:'
    number = gets.chomp.to_i
    break unless number.negative?
    puts "That number doesn't fit the criteria"
  end

  loop do
    puts "Enter 's' to compute the sum, 'p' to compute the product."
    operation = gets.chomp

    if operation == 's'
      puts "The sum of the integers between 1 and #{number} is #{(1..number).inject(:+)}."
      break
    elsif operation == 'p'
      puts "The product of the integers between 1 and #{number} is #{(1..number).inject(:*)}."
      break
    else
      puts "Wrong input"
    end
  end

  puts "Do you want to do another calculation?"
  break unless gets.chomp.downcase.include?('y')
end
