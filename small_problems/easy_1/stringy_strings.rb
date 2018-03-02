def stringy(num, arg)
  count = Array.new(num) # array that will hold 'num' values
  count.each_index do |index| # for each index
    arg == 0 ? (index.even? ? count[index] = 0 : count[index] = 1) :
    (index.even? ? count[index] = 1 : count[index] = 0) # write 1's and 0's
  end
  count.join() # Array#join to create the final string
end

puts stringy(6, 1) == '101010'
puts stringy(9, 1) == '101010101'
puts stringy(4, 1) == '1010'
puts stringy(7, 1) == '1010101'

puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'

=begin original solution
def stringy(num)
  count = num
  output_str = ''
  while count > 0
    output_str << '1'
    count -= 1
    break if count.zero?
    output_str << '0'
    count -= 1
  end
  output_str
end

second solution similar to official solution
def stringy(num)
  count = Array.new(num) # array that will hold 'num' values
  count.each_index do |index| # for each index
    index.even? ? count[index] = '1' : count[index] = '0' # write 1's and 0's
  end
  count.join() # Array#join to create the final string
end
=end
