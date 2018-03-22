def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

puts square(5) == 25
puts square(-8) == 64

# further exploration
def power(num, pow)
  sum = 1
  upto = 0
  loop do
    break if upto == pow
    sum = multiply(sum, num)
    upto += 1
  end
  sum
end

puts power(5, 1) == 5
puts power(5, 2) == 25
puts power(5, 3) == 125
puts power(5, 4) == 625
puts power(5, 5) == 3125
