# return true if absolute value of input is odd

def is_odd?(number)
  number.abs.remainder(2) == 1
end


puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# first solution - kinda verbose
def is_odd?(number)
  if number.abs % 2 == 0
    return false
  else
    return true
  end
end
