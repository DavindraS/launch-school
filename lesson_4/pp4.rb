Practice Problem 4

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

My Answer:
The return value is the hash {a: 'ant', b: 'bear', c: 'cat'}. value[0] gets
the first letter of the 'value' string, and hash[value[0]] is what makes the key
and then it is set equal to the value itself.
