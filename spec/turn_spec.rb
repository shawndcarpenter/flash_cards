require './lib/turn'
require './lib/card'

RSpec.describe Turn do
    it 'returns the guess' do
      card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      turn = Turn.new("Juneau", card)

      expect(turn.guess).to eq("Juneau")
    end

    it 'returns the Card' do
      card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      turn = Turn.new("Juneau", card)
    
      expect(turn.card).to eq(card)
    end

    it 'returns a boolean indicating if the guess matched the answer on the Card' do
      card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      turn = Turn.new("Juneau", card)

      expect(turn.card).to eq(card)
      expect(turn.guess).to eq("Juneau")
      expect(turn.correct?).to be(true)
      expect(turn.feedback).to eq("Correct!")

    end

    it 'returns a boolean indicating if the guess did NOT match the answer on the Card' do
      card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
      turn = Turn.new("Saturn", card)
      
      expect(turn.card).to eq(card)
      expect(turn.guess).to eq("Saturn")
      expect(turn.correct?).to be(false)
      expect(turn.feedback).to eq("Incorrect.")
    end
end