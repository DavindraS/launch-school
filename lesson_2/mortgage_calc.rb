loan_amount = nil
apr = nil
interest = nil
duration = nil

def continue?(input)
  input.downcase.start_with?('y') ? true : false
end

loop do
  puts('Welcome to the Mortgage Calculator')

  loop do
    puts('Please enter the loan amount')
    loan_amount = gets.chomp.to_f
    if loan_amount < 0
      puts('Please enter an amount greater than 0')
    else
      break
    end
  end

  loop do
    puts('What\'s your APR? (ex. 5, 24.5, not .05 or .245)')
    apr = gets.chomp.to_f
    if apr < 1
      puts('Please enter the APR in the correct format (6.5 instead of .065)')
    else
      interest = (apr * 0.01) / 12.0 # Monthly interest
      break
    end
  end

  puts('Please enter the loan duration in years')
  duration = gets.chomp.to_f * 12

  monthly = loan_amount * (interest / (1 - (1 + interest)**-duration))
  puts("Your monthly payment is $#{monthly.round(2)}")
  puts('Would you like to check monthly payments for another loan? (yes or no)')
  break unless continue?(gets.chomp)
end
