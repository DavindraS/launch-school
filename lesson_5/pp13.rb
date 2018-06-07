# Return a new array with the same subarrays, but ordered by the odd
# numbers they contain

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
solution = [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

modified = arr.sort_by do |subarr|
  acc = 0
  subarr.each do |item|
    acc += item if item.odd?
  end
  acc
end

p modified == solution
