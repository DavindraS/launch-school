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

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
