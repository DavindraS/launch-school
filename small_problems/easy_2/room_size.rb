FEET_TO_INCHES = 144
INCHES_TO_CENTIMETERS = 6.4516
choice = nil

loop do
  puts 'Which exercise do you want to do? 1. original, 2. futher exploration'
  choice = gets.chomp.to_i
  break if choice == 1 || choice == 2
end

if choice == 1
  puts 'Enter the length of the room in meters'
  length = gets.chomp.to_f
  puts 'Enter the width of the room in meters'
  width = gets.chomp.to_f
  area_sq_meters = length * width
  area_sq_feet = length * width * 10.7639
  puts "The area of the room is #{area_sq_meters} square meters (#{area_sq_feet.round(2)} square feet)."
elsif choice == 2 # further exploration
  puts 'Enter the length of the room in feet'
  length = gets.chomp.to_f
  puts 'Enter the width of the room in feet'
  width = gets.chomp.to_f
  sq_ft = length * width
  sq_in = sq_ft * FEET_TO_INCHES
  sq_cm = sq_in * INCHES_TO_CENTIMETERS
  puts "The area of the room is #{sq_ft} square feet, #{sq_in} square inches, and #{sq_cm} square centimeters"
end
