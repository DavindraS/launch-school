# Without using array.to_h, create a hash
# with the first item the key and the second item the value
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
=begin
This solution is wrong because it maps the hashes into an array. For
example, instead of a creating a hash {:a => b}, it creates [{:a => b}]
a hash as an element of the array. The problem just wants a hash with
the specified keys and values.

mod = arr.map do |subarr|
  Hash[subarr[0], subarr[1]]
end

p mod
p arr
=end

hsh = {}
arr.each do |subarr|
  hsh[subarr[0]] = subarr[1]
end

p hsh 
