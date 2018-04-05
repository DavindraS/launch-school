# a
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # this should be 'one'
puts "two is: #{two}" # this should be 'two'
puts "three is: #{three}" # this should be 'three'

# In mess_with_vars, the method variables point to the value of the parameters
# not the actual variables...so nothing gets changed outside of the method. 
