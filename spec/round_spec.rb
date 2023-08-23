require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

cards = [card_1, card_2, card_3]
deck = Deck.new(cards)

RSpec.describe Round do

  it 'starts a round' do
    round = Round.new(deck)
    expect(round.deck).to eq(deck)
    expect(round.turns).to eq([])
    expect(round.current_card).to eq(card_1)
  end

  it 'starts a new turn' do
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

   # require 'pry';  binding.pry
    expect(round.number_correct).to be(1)
  end

  it 'changes current card' do
    # card should be Mars
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
    # require 'pry';  binding.pry
    expect(round.current_card).to be(card_2)
  end

  it 'counts rounds' do
    # should return 2
  end

  it 'gives last feedback' do
    # should provide incorrect
  end

  it 'gives number correct' do
    # should show 1
  end

  it 'gives number correct by category' do
    # STEM - 0
    # Geography - 1
  end

  it 'gives a percentage correct' do
    # should be 50.0
  end

  it 'gives percentage correct by category' do
    # should be 100.0 for geography
  end

  it 'gives current card' do
    # should be north north
  end
end