puts 'Enter the length of the room in meters'
length = gets.chomp.to_f
puts 'Enter the width of the room in meters'
width = gets.chomp.to_f
area_sq_meters = length * width
area_sq_feet = length * width * 10.7639
puts "The area of the room is #{area_sq_meters} square meters (#{area_sq_feet.round(2)} square feet)."
