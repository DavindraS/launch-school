say_hello = true
hello_count = 0
while say_hello
  puts 'Hello!'
  hello_count += 1
  say_hello = false if hello_count == 5
end
