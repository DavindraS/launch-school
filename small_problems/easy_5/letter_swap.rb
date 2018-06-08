# Taking a string, return a string where the 1st and last letters are switched
def swap(str)
  strarr = str.split(' ') # 'hello'
  letterarr = strarr.map {|word| word.chars} # ['h','e','l','l','o']
  letterarr.map! do |letters| # 'oellh'
    first = letters.first
    last = letters.last
    letters[0] = last
    letters[letters.length-1] = first
    letters.join
  end
  letterarr.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
