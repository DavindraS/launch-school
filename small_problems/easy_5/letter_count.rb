# take a string of words and returns a hash with the number of words of diff sizes

def word_sizes(str)
  # split into individual words
  words = str.split(' ')
  # get size for each word
  word_sizes = words.map do |word|
    word.size
  end
  # create a hash that will contain the information
  hsh = {}
  # for every element in word sizes
  word_sizes.each do |size|
    # check if its in hsh, if so, increment the value
    if hsh.has_key?(size)
      hsh[size] += 1
    # if not, add it with number of times of 1
    else
      hsh[size] = 1
    end
  end

  hsh
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}

=begin official solution
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end
=end
