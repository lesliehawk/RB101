# Assignment: RPS Bonus Features

VALID_CHOICES = %w(rock paper scissors lizard Spock)
MATCH_POINTS = 3
WINNING_COMBOS = {  'rock' => ['scissors', 'lizard'],
                    'paper' => ['rock', 'Spock'],
                    'scissors' => ['paper', 'lizard'],
                    'lizard' => ['Spock', 'paper'],
                    'Spock' => ['scissors', 'rock'] }

def prompt(message)
  puts "=> #{message}"
end

def display_welcome
  prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock!")
  prompt("First to #{MATCH_POINTS} points wins the match.")
end

def get_player_input(opponents, selection)
  loop do
    display_scoreboard(opponents)
    display_choice_list
    chosen = gets.chomp
    selection = return_choice(chosen)
    if selection
      break
    else
      system('clear')
      prompt("Oops, '#{chosen}' is not a valid choice.")
      prompt("Please choose again.")
    end
  end
  selection
end

def display_scoreboard(opponents)
  puts ""
  prompt("Player: #{opponents[:player]}")
  prompt("Computer: #{opponents[:computer]}")
  puts ""
end

def display_choice_list
  prompt("Choose one: #{VALID_CHOICES.join(', ')}.")
  prompt("You may select by word, or first letter (r, p, s, l, S).")
end

def return_choice(chars)
  if chars.size > 1
    chars.downcase!
    chars.capitalize! if chars == "spock"
    VALID_CHOICES.find { |word| word == chars }
  else
    VALID_CHOICES.find { |word| word[0] == chars }
  end
end

def display_results(player, computer)
  case point_goes_to(player, computer)
  when :player
    prompt("You won!")
  when :computer
    prompt("Computer won!")
  when :tie
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

def win?(first, second)
  WINNING_COMBOS[first].include?(second)
end

def display_match_winner(players)
  prompt(">>#{players.key(MATCH_POINTS)} wins the match!!<<".upcase)
  puts ""
end

system("clear")
loop do
  display_welcome
  players = { player: 0, computer: 0 }
  loop do
    choice = ''
    choice = get_player_input(players, choice)
    computer_choice = VALID_CHOICES.sample
    system("clear")
    prompt("You chose: #{choice}; Computer chose: #{computer_choice}.")

    display_results(choice, computer_choice)
    winner = point_goes_to(choice, computer_choice)

    players[winner] += 1 unless winner == :tie

    break if players.value?(MATCH_POINTS)
  end

  display_scoreboard(players)
  display_match_winner(players)

  prompt("Do you want to play again? (y/n)")
  answer = gets.chomp
  system("clear")
  break unless answer.downcase.start_with?('y')
end
prompt("Thanks for playing!")
