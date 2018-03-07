puts('Welcome to my Loan Calculator')
puts('Please enter the loan amount')
loan_amount = gets.chomp.to_f
puts('What\'s your APR? (ex. 5%, 24.5%)')
apr = gets.chomp.to_f
interest = (apr * 0.01) / 12.0 # Monthly interest
puts('Please enter the loan duration')
duration = gets.chomp.to_f

monthly = loan_amount * (interest / (1 - (1 + interest)**-duration))

puts("Your monthly payment is $#{monthly.round(2)}")
