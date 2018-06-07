# Without using array.to_h, create a hash
# with the first item the key and the second item the value
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

mod = arr.map do |subarr|
  Hash[subarr[0], subarr[1]]
end

p mod
p arr
