VALID_CHOICES = %w[rock paper scissors lizard spock].freeze
WINNING_CHOICES = {
  rock: ['scissors','lizard'],
  paper: ['rock', 'spock'],
  scissors: ['paper', 'lizard'],
  lizard: ['spock', 'paper'],
  spock: ['scissors', 'rock']
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WINNING_CHOICES[:"#{first}"].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

choice = ''

loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets.chomp

    break if VALID_CHOICES.include?(choice)
    prompt("That's not a valid choice.")
  end

  computer_choice = VALID_CHOICES.sample
  Kernel.puts("You choose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt('Do you want to play again?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing. Good Bye!')
