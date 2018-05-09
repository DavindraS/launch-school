# ascii string value
def ascii_value(string)
  sum = 0
  string.each_char do |chr|
    sum += chr.ord
  end

  sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

# further exploration
p 'a'.ord.chr == 'a' # find the mystery method
p 'hello'.ord.chr # only prints 'h'
