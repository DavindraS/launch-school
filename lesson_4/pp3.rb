Practice Problem 3

[1, 2, 3].reject do |num|
  puts num
end

My Answer:

reject is looking for elements in the array that return false from the block.
Because 'puts num 'returns nil, which is falsy, all the elements are returned.
