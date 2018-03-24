def palindrome?(string)
  string_array = string.chars
  string_array == string_array.reverse
end


puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
