=begin
def multisum(num)
  sum = 0
  1.upto(num) do |num|
    sum += num if num % 3 == 0 || num % 5 == 0
  end
  sum
end
=end

def multisum(num)
  (1..num).to_a.delete_if{|x| (x % 3 != 0 && x % 5 != 0)}.reduce(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
