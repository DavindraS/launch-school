arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new = arr.map do |hsh|
  hsh.map do |k, v|
    {k => v+1}
  end
end

p new
p arr
