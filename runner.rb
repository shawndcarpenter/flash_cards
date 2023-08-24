require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
# require "readline"
card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

cards = [card_1, card_2, card_3]
deck = Deck.new(cards)
round = Round.new(deck)

# prompt = "> "

# while buf = Readline.readline(prompt, true)
#   puts "Welcome! You're playing with 4 cards.
#   -------------------------------------------------
#   This is card 1 out of 3.
#   Question: #{card_1.question}"

# end

#loop do

def start
  #start a round
  #welcome message
  #this is card(card) out of cards

end