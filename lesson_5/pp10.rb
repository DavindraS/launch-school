arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
=begin
This solution is wrong because this modifies arr. The problem
specifies that we are not to modify the original array.
arr.map do |hsh|
  hsh.map do |k, v|
    hsh[k] = v + 1
  end
end
=end

new = arr.map do |hsh|
  incremented_hash = {}
  hsh.each do |k, v|
    incremented_hash[k] = v + 1
  end
  incremented_hash
end

p new # I added this to verify the increment happened
p arr
