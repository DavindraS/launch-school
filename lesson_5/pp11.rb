# return a new array of identical structure, but only with
# numbers that are multiples of 3
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

mod = arr.map do |subarr|
  subarr.select do |item|
    item % 3 == 0
  end
end

p mod
