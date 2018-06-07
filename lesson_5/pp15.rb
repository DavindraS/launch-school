# Return an array that contains the hashes where all ints are even

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

solution = [{e: [8], f: [6, 10]}]

my_result = arr.select do |subhash|
  subhash.all? do |k, v|
    v.all? do |item|
      item.even?
    end
  end
end

p my_result
p my_result == solution
