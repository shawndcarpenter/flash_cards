require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'


RSpec.describe Round do

  it 'starts a round' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    round = Round.new(deck)
    expect(round.deck).to eq(deck)
    expect(round.turns).to eq([])
    expect(round.current_card).to eq(card_1)
  end

  it 'starts a new turn' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

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

  it 'sets the current deck' do
    # card should be Mars
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)

    expect(round.deck).to eq(deck)

  end

  it 'starts out with an empty array' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    expect(round.turns).to eq([])

  end 

  it 'starts with the first card in the deck' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    
    expect(round.current_card).to eq(card_1)

  end

  it 'takes a turn' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    new_turn = round.take_turn("Juneau")

    expect(new_turn.class).to eq(Turn)
    expect(new_turn.correct?).to be(true)
  end

  it 'takes a new turn' do
  
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    new_turn = round.take_turn("Juneau")

    expect(round.turns).to eq([new_turn])
    expect(round.current_card).to be(card_2)
   # require 'pry';  binding.pry
  end

  it 'counts rounds' do
    # should return 2
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    new_turn = round.take_turn("Juneau")
    expect(round.current_card).to be(card_2)
    round.take_turn("Venus")
    expect(round.turns.count).to eq(2)

  end

  it 'gives last feedback' do
    # should provide incorrect
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    new_turn = round.take_turn("Juneau")
    expect(round.current_card).to be(card_2)
    round.take_turn("Venus")
    expect(round.turns.last.feedback).to eq("Incorrect.")
  end

  it 'gives number correct' do
    # should show 1
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    new_turn = round.take_turn("Juneau")
    expect(round.current_card).to be(card_2)
    round.take_turn("Venus")
    expect(round.number_correct).to eq(1)
  end

  it 'gives number correct by category' do
    # STEM - 0
    # Geography - 1
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    new_turn = round.take_turn("Juneau")
    expect(round.current_card).to be(card_2)
    round.take_turn("Venus")
    # require 'pry';  binding.pry
    expect(round.number_correct_by_category(:STEM)).to eq(0)
    expect(round.number_correct_by_category(:Geography)).to eq(1)
  end

  xit 'gives a percentage correct' do
    # should be 50.0
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    new_turn = round.take_turn("Juneau")
    expect(round.current_card).to be(card_2)
    round.take_turn("Venus")
  end

  xit 'gives percentage correct by category' do
    # should be 100.0 for geography
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    new_turn = round.take_turn("Juneau")
    expect(round.current_card).to be(card_2)
    round.take_turn("Venus")
  end

  xit 'gives current card' do
    # should be north north
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)
    new_turn = round.take_turn("Juneau")
    expect(round.current_card).to be(card_2)
    round.take_turn("Venus")
  end
end