hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# using 'each', write code to get all vowels from the string
hsh.each do |key, value|
  value.each do |word|
    word.each_char do |letter|
      puts letter if 'aeiou'.include?(letter)
    end
  end
end
