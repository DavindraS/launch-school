# Further exploration 1
def running_total(arr)
  sum = 0
  arr.each_with_object([]) {|value, new_arr| new_arr << sum += value}
end

# Further exploration 2
def running_total2(arr)
  sum = 0
  new_arr = []
  new_arr = arr.inject([]) do |memo, n|
    sum += n
    memo << sum
  end
end

puts running_total2([2, 5, 13]) == [2, 7, 20]
puts running_total2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total2([3]) == [3]
puts running_total2([]) == []

=begin my original solution
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

actual solution
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end
=end
