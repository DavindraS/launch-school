VALID_CHOICES = %w[rock paper scissors lizard spock r p s l sp].freeze
WINNING_CHOICES = {
  rock: %w[scissors lizard],
  paper: %w[rock spock],
  scissors: %w[paper lizard],
  lizard: %w[spock paper],
  spock: %w[scissors rock]
}.freeze

player_score = 0
computer_score = 0

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
  WINNING_CHOICES[first.to_sym].include?(second)
end

def return_results(player, computer)
  if win?(player, computer)
    'player'
  elsif win?(computer, player)
    'computer'
  else
    'none'
  end
end

def display_final_score(player_score, computer_score)
  if player_score > computer_score
    puts "YOU WON! You: #{player_score} Computer: #{computer_score}"
  else
    puts "The computer won! You: #{player_score} Computer: #{computer_score}"
  end
end

our_choice = ''

loop do
  loop do
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      our_choice = make_long(Kernel.gets.chomp)
      break if VALID_CHOICES.include?(our_choice)
      prompt("That's not a valid choice.")
    end

    computer_choice = make_long(VALID_CHOICES.sample)
    Kernel.puts("You chose: #{our_choice}; Computer chose: #{computer_choice}")

    winner = return_results(our_choice, computer_choice)

    if winner == 'player'
      prompt('You won!')
      player_score += 1
    elsif winner == 'computer'
      prompt('Computer won!')
      computer_score += 1
    else
      prompt("It's a tie!")
    end

    break if player_score == 5 || computer_score == 5
  end

  display_final_score(player_score, computer_score)

  prompt('Do you want to play again?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing. Good Bye!')
