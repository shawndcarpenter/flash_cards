require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
# require "readline"


# prompt = "> "

# while buf = Readline.readline(prompt, true)
#   puts "Welcome! You're playing with 4 cards.
#   -------------------------------------------------
#   This is card 1 out of 3.
#   Question: #{card_1.question}"

# end

#loop do

def start
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

  cards = [card_1, card_2, card_3]
  deck = Deck.new(cards)
  round = Round.new(deck)
  starting_deck_length = deck.cards.length

  while starting_deck_length == deck.cards.length do
    starting_deck_length == deck.cards.length
    puts "Welcome! You're playing with #{deck.count} cards.
    ------------------------------------------------- 

    This is card #{round.turns.length + 1} out of #{starting_deck_length}
    Question: #{round.current_card.question}"
    turn = round.take_turn(gets.chomp)
      puts turn.feedback
  end
  "This is card #{round.turns.length + 1} out of #{starting_deck_length}
    Question: #{round.current_card.question}"
    turn = round.take_turn(gets.chomp)
      puts turn.feedback
  #start a round
  #welcome message
  #this is card(card) out of cards

end

start