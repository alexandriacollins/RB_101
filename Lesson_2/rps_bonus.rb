require 'yaml'

WIN_CONDITIONS = YAML.load_file('win.yml')
VALID_CHOICES = %w(r p s l sp)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WIN_CONDITIONS[first].include?(second)
end

def display_result(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

def check_total_wins(p_wins, c_wins)
  if p_wins == 5
    prompt "You are the grand winner!" 
  elsif c_wins == 5
    prompt "The computer is the grand winner!" 
  end
end

player_wins = 0
computer_wins = 0

prompt "Welcome to Rock, Paper, Scissors, Lizard, Spock!"

loop do
  player = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    player = gets.chomp.downcase

    if VALID_CHOICES.include?(player)
      break
    else
      prompt "That's not a valid choice."
    end
  end

  computer = VALID_CHOICES.sample

  prompt "You chose: #{player}; Computer chose: #{computer}"
  prompt display_result(player, computer)

  if win?(player, computer)
    player_wins += 1
  elsif win?(computer, player)
    computer_wins += 1
  end

  prompt "You: #{player_wins} wins; Computer: #{computer_wins} wins"
  check_total_wins(player_wins, computer_wins)
  break if computer_wins == 5 || player_wins == 5

  prompt "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing. Good bye!"
