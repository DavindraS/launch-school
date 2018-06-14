# create a hash of word counts, but without the punctuation
# refer to letter_count.rb
def word_sizes(str)
  alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
  hsh = Hash.new(0)
  modified_string = str.split.map do |word|
    # map only the alphabetic characters - returns word without punctuation
    word.chars.map do |character|
      if alphabet.include?(character)
        character
      end
    end.join
  end
  modified_string.each {|word| hsh[word.size] += 1}
  hsh
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}

=begin original solution
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end
=end
