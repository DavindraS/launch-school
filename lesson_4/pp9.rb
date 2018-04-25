Practice Problem 9

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

My Answer:
map returns a new array with the result of running the block for each element.
In this case, it will return [nil, 'bear']. When the block is run on 'ant', nil
  will be returned since ant.size < 3, then when it is run on 'bear', it will
  return 'bear' for that element. The resulting array will be [nil, 'bear'].
