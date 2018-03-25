My answer: I would expect the the elements of the numbers array to be printed.
numbers.uniq does not alter the original array, it just returns a new array
with all the unique elements. But when we go back and puts numbers, we're
referring back to the unmodified original array.
