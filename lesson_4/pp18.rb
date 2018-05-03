numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

This one confuses me a little. At first I thought it would p 1,
then we shift it, the numbers array becomes [2, 3, 4] and then
2 would be printed. But it looks like 'each' uses indexes, so after
index 0 was looped, it started running the block on index 1, which
in the latter case is 3, which gets printed. Then when its shifted
again the numbers array becomes [3, 4] and its going to work on
index 2, but there is none and then [3, 4] is returned.

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

As we are going through each loop, the last number gets popped.
This means that Array.each reaches the end after the second iteration,
so only 1 and 2 are 'printed', while 4 and 3 were popped.
