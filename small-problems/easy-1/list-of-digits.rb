# method that takes one positive int and returns list of digits in number

def digit_list(number)
  num_array = []
  number.to_s.each_char { |e| num_array << e.to_i }
  num_array
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
