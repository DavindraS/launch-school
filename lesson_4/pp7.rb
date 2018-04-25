Practice Problem 7

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

My Answer:
The blocks return value will be true or false depending on whether num
is odd. It is determined by the last expression evaluated.

The return value of any? is true if the block ever returns true.

This code outputs true.
