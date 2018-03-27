# puts "the value of 40 + 2 is " + (40 + 2)

# This gives an error because we are attempting to add an integer to a string
# which doesn't make sense. The + operator for a String works with 2 strings.

# potential solution 1
puts "The value of 40 + 2 is #{(40 + 2)}"
# potential solution 2
puts "The value of 40 + 2 is " + (40 + 2).to_s
