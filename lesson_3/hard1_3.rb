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

# b
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # 'one'
puts "two is: #{two}" # 'two'
puts "three is: #{three}" # 'three'

# Same as above. The variables in mess_with_vars do not affect the outside vars.

# c
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # 'two'
puts "two is: #{two}" # 'three'
puts "three is: #{three}" # 'one'

# gsub! modifies a variable in place, so it affects the outside variables.
