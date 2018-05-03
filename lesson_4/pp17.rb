# Create a hash that expresses the frequency with which each letter occurs in this string

statement = "The Flintstones Rock"

frequency = {}

statement.chars.each do |char|
  if frequency.keys.include?(char)
    frequency[char] += 1
  else
    frequency[char] = 1
  end
end

p frequency
