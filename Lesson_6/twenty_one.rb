require 'pry'

# Constants
SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
GAME_GOAL = 21
DEALER_MAX_STAY = 17

# Methods
def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def totals(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > GAME_GOAL
  end

  sum
end

def hit(deck, user_hand)
  user_hand << (deck.delete(deck.sample))
end

def busted?(total)
  total > GAME_GOAL
end

def detect_result(player_total, dealer_total)
  if player_total > GAME_GOAL
    :player_busted
  elsif dealer_total > GAME_GOAL
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(player_total, dealer_total)
  result = detect_result(player_total, dealer_total)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def grand_output(player_hand, dealer_hand)
  puts "=========="
  prompt "Dealer has #{dealer_hand}, for a total of: #{totals(dealer_hand)}"
  prompt "Player has #{player_hand}, for a total of: #{totals(player_hand)}"
  puts "=========="
end

def display_total_wins(player_wins, dealer_wins)
  prompt "You: #{player_wins} wins"
  prompt "Dealer: #{dealer_wins} wins"
end

# Wins tracker
player_wins = 0
dealer_wins = 0

# Code for game
loop do # Start of new game
  prompt "Welcome to Twenty One"

  deck = initialize_deck
  player_hand = []
  dealer_hand = []

  2.times do
    player_hand << deck.pop
    dealer_hand << deck.pop
  end

  player_total = totals(player_hand)
  dealer_total = totals(dealer_hand)

  prompt "Dealer has #{dealer_hand[0]} and ?"
  prompt "You have: #{player_hand[0]} and #{player_hand[1]}, for a total of #{player_total}."

  # Player turn
  loop do
    player_answer = nil
    loop do
      prompt "Hit or stay? (h or s)"
      player_answer = gets.chomp.downcase
      break if ['h', 's'].include?(player_answer)
      prompt "Sorry, must enter 'h' or 's'."
    end

    if player_answer == 'h'
      player_hand << deck.pop
      player_total = totals(player_hand)
      prompt "You chose to hit!"
      prompt "Your cards are now: #{player_hand}"
      prompt "Your total is now: #{player_total}"
    end

    break if player_answer == 's' || busted?(player_total)
  end

  if busted?(player_total)
    grand_output(player_hand, dealer_hand)
    display_result(player_total, dealer_total)
    dealer_wins += 1
    display_total_wins(player_wins, dealer_wins)
    play_again? ? next : break
  else
    prompt "You stayed at #{player_total}."
  end

  # Dealer turn
  prompt "Dealer turn..."

  loop do
    break if dealer_total >= DEALER_MAX_STAY

    prompt "Dealer hits!"
    dealer_hand << deck.pop
    dealer_total = totals(dealer_hand)
    prompt "Dealer's cards are now #{dealer_hand}"
  end

  if busted?(dealer_total)
    prompt "Dealer total is now: #{dealer_total}"
    grand_output(player_hand, dealer_hand)
    display_result(player_total, dealer_total)
    player_wins += 1
    display_total_wins(player_wins, dealer_wins)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{dealer_total}"
  end

  # dealer and player stays
  grand_output(player_hand, dealer_hand)
  display_result(player_total, dealer_total)

  # Update win total
  if dealer_total < player_total
    player_wins += 1
  else dealer_total > player_total
    dealer_wins += 1
  end
  display_total_wins(player_wins, dealer_wins)

  if player_wins == 5
    prompt "You are the grand champion!"
    break
  elsif dealer_wins == 5
    prompt "The Dealer is the grand champion!"
    break
  end

  break unless play_again? 
end

prompt "Thanks for playing Twenty One! Good bye!"
