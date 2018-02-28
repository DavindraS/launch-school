=begin
Write a method that takes two arguments, a string and a positive
integer, and prints the string as many times as the integer indicates.
=end

def repeat(input, times)
  times.times do
    puts input
  end
end

repeat('Hello', 3)
