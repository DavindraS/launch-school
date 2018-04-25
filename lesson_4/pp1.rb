Practice Problem 1

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

My Answer:

The return value of this would be the array [1, 2, 3]. This is because
select returns an array with all elements where the block returns true.
'hi' is a truthy value, so each time select is called on an element and the
block is run, true will be given and then the element selected.
