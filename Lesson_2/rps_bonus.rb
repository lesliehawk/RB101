# Assignment: RPS Bonus Features

VALID_CHOICES = %w(rock paper scissors lizard Spock)
VALID_ABBRV = %w(r p s l S)

WINNING_COMBOS = {  'rock' => ['scissors', 'lizard'],
                    'paper' => ['rock', 'Spock'],
                    'scissors' => ['paper', 'lizard'],
                    'lizard' => ['Spock', 'paper'],
                    'Spock' => ['sciissors', 'rock'] }

def prompt(message)
  puts "=> #{message}"
end

def display_welcome
  prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock!")
  prompt("First to 3 points wins the match.")
end

def display_choice_list
  prompt("Choose one: #{VALID_CHOICES.join(', ')}.")
  prompt("Select by first letter, case sensitive.")
end

def return_choice(char)
  VALID_CHOICES.select { |word| word[0] == char }.join
end

def win?(first, second)
  WINNING_COMBOS[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def point_goes_to(player, computer)
  if win?(player, computer)
    :player
  elsif win?(computer, player)
    :computer
  else
    :tie
  end
end

def display_scoreboard(opponents)
  puts ""
  prompt("Player: #{opponents[:player]}")
  prompt("Computer: #{opponents[:computer]}")
  puts ""
end

def display_match_winner(players)
  prompt(">>#{players.key(3)} wins the match!!<<".upcase)
  puts ""
end

system("clear")
loop do
  display_welcome
  players = { player: 0, computer: 0 }
  loop do
    choice = ''
    loop do
      display_scoreboard(players)
      display_choice_list
      choice_abbrv = gets.chomp
      choice = return_choice(choice_abbrv)

      if VALID_CHOICES.include?(choice)
        break
      else
        system('clear')
        prompt("Oops, '#{choice_abbrv}' is not a valid choice.")
        prompt("Please choose again.")
      end
    end

    computer_choice = VALID_CHOICES.sample
    system("clear")
    prompt("You chose: #{choice}; Computer chose: #{computer_choice}.")

    display_results(choice, computer_choice)
    winner = point_goes_to(choice, computer_choice)

    players[winner] += 1 unless winner == :tie

    break if players.value?(3)
  end

  display_scoreboard(players)
  display_match_winner(players)

  prompt("Do you want to play again? (y/n)")
  answer = gets.chomp
  system("clear")
  break unless answer.downcase.start_with?('y')
end
prompt("Thanks for playing!")
