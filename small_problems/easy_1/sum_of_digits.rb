def sum(input)
  p input.to_s.chars
  input.to_s.chars.map(&:to_i).reduce(:+)
  # 1. Take the input and convert it to a string 23 -> "23"
  # 2. Call String#chars which results in an array of each character ["2", "3"]
  # 3. We have an array which we then run map to_i on each index [2, 3]
  # 4. Then we call inject with :+ symbol to add it all together 5
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
