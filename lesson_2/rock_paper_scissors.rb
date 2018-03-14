VALID_CHOICES = %w[rock paper scissors lizard spock r p s l sp].freeze
WINNING_CHOICES = {
  rock: %w[scissor lizard],
  paper: %w[rock spock],
  scissors: %w[paper lizard],
  lizard: %w[spock paper],
  spock: %w[scissors rock]
}.freeze

def prompt(message)
  Kernel.puts("=> #{message}")
end

def make_long(choice)
  case choice
  when 'r' then 'rock'
  when 'p' then 'paper'
  when 's' then 'scissors'
  when 'l' then 'lizard'
  when 'sp' then 'spock'
  else choice
  end
end

def win?(first, second)
  WINNING_CHOICES[make_long(first).to_sym].include?(make_long(second))
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
  Kernel.puts("You choose: #{make_long(choice)}; Computer chose: #{make_long(computer_choice)}")

  display_results(choice, computer_choice)

  prompt('Do you want to play again?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing. Good Bye!')
