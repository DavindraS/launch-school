# take a string and remove any consecutive duplicate characters
def crunch(double_str)
  double_str.chars.map.with_index do |char, index|
    char unless characters[index+1] == char
  end.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
