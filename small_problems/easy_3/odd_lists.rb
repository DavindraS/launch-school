=begin
def oddities(arr)
  new_arr = arr.map.with_index {|x, i| x if i.even?}
  new_arr.compact
end
=end

=begin
def oddities(arr)
  new_arr = Array.new
  index = 0
  loop do
    break if index >= arr.length
    new_arr << arr[index]
    index += 2
  end
  p new_arr
end
=end

def oddities(arr)
  arr.delete_if.with_index {|x, i| x if i.odd?}
end


puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
