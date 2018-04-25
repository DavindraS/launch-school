Practice Problem 2
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

My Answer:
Array.count is looking for a true value from the block. You can look this up
in the docs under Enumerable count or Array count. 
