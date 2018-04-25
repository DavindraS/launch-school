Practice Problem 10

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

My Answer:
The block will return num for 1 then 'nil' for the other elements.
The reason is that when the block gets run, num will be called for 1 and puts num
will be called for the rest. puts num returns nil, so that will be returned. 
