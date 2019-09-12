# Constants
SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

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
    sum -= 10 if sum > 21
  end

  sum
end

def hit(deck, user_hand)
  user_hand << (deck.delete(deck.sample))
end

def busted?(hand)
  totals(hand) > 21
end

def detect_result(player_cards, dealer_cards)
  player_total = totals(player_cards)
  dealer_total = totals(dealer_cards)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(player_cards, dealer_cards)
  result = detect_result(player_cards, dealer_cards)

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

  prompt "Dealer has #{dealer_hand[0]} and ?"
  prompt "You have: #{player_hand[0]} and #{player_hand[1]}, for a total of #{totals(player_hand)}."

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
      prompt "You chose to hit!"
      prompt "Your cards are now: #{player_hand}"
      prompt "Your total is now: #{totals(player_hand)}"
    end

    break if player_answer == 's' || busted?(player_hand)
  end

  if busted?(player_hand)
    display_result(player_hand, dealer_hand)
    play_again? ? next : break
  else
    prompt "You stayed at #{totals(player_hand)}."
  end

  # Dealer turn
  prompt "Dealer turn..."

  loop do
    break if totals(dealer_hand) >= 17

    prompt "Dealer hits!"
    dealer_hand << deck.pop
    prompt "Dealer's cards are now #{dealer_hand}"
  end

  if busted?(dealer_hand)
    prompt "Dealer total is now: #{totals(dealer_hand)}"
    display_result(player_hand, dealer_hand)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{totals(dealer_hand)}"
  end

  # dealer and player stays
  puts "=========="
  prompt "Dealer has #{dealer_hand}, for a total of: #{totals(dealer_hand)}"
  prompt "Player has #{player_hand}, for a total of: #{totals(player_hand)}"
  puts "=========="

  display_result(player_hand, dealer_hand)

  break unless play_again?
end

prompt "Thanks for playing Twenty One! Good bye!"
