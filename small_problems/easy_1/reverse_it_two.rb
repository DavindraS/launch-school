def reverse_words(input)
  # if the word is 5 or more chars, reverse in place
  # else leave word and move along
  input.split.each{|word| word.reverse! if word.length >= 5}.join(" ")

end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
