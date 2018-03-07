require 'date'

print 'What is your age? '
current_age = gets.chomp.to_i
print 'At what age would you like to retire? '
retire_age = gets.chomp.to_i

years_to_retire = retire_age - current_age
current_year = Date.today.year
retirement_year = current_year + years_to_retire
puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_to_retire} years of work to go!"
