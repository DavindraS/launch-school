def factors(number)
  dividend = number
  divisors = []

  return 0 if dividend == 0

  loop do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
    break if dividend <= 0
  end
  divisors
end

# Bonus 1
# The purpose of that is to see if the number divides completely without
# leaving a remainder

# Bonus 2
# This is to explicitly return the full divisors array
