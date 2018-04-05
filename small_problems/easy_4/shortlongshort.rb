def short_long_short(string1, string2)
  result = ''
  if string1.length > string2.length
    result.concat(string2, string1, string2)
  else
    result.concat(string1, string2, string1)
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
