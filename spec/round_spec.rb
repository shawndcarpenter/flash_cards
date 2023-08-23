require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

RSpec.describe Round do
  xit 'stores a deck' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
   
  end

  it 'starts a round' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    expect(round.deck).to eq(deck)
    expect(round.turns).to eq([])
    expect(round.current_card).to eq(card_1)
  end

  it 'starts a new turn' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    expect(round.deck).to eq(deck)
    expect(round.turns).to eq([])
    expect(round.current_card).to eq(card_1)

    new_turn = round.take_turn("Juneau")

    expect(new_turn.class).to eq(Turn)
    expect(new_turn.correct?).to be(true)
    expect(round.turns).to eq([new_turn])
    new_turn.class
    new_turn.correct?
    round.turns
    def correct_answer
    require 'pry';  binding.pry
    expect(round.number_correct).to be(1)
  end

end