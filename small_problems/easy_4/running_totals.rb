def running_total(arr)
  arr.map!.with_index do |x, i|
    if i == 0
      x
    else
      x += arr.fetch(i-1)
    end
  end
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

=begin actual solution
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end
=end
