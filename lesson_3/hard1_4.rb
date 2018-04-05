def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split('.')
  return false if dot_separated_words != 4
  loop do
    break if dot_separated_words.empty?
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end
