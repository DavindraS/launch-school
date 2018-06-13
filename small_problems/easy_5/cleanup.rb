# Given a string, strip out all non alphabetic characters
def cleanup(str)
  alphabet = ('a'..'z').to_a
  new_str = str.chars.map.with_index do |letter, index|
    if !alphabet.include?(letter) # if you're not an alphabetic character
      if alphabet.include?(str.chars[index+1]) # if the next char is alphabetic
        ' '
      elsif index == str.chars.size-1 # if we're at the end
        ' '
      else
        str.chars[index] = nil # delete the character
      end
    else
      letter # return the character
    end
  end.join # join the chars array

  new_str # return the new string
end

p cleanup("---what's my +*& line?") == ' what s my line '

=begin official solution
def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end
=end
