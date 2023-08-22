require './lib/turn'

RSpec.describe Turn do
    it 'returns the guess' do
      turn = Turn.new("Juneau", card)

      expect(turn.guess).to eq("Juneau")
    end

    it 'returns the Card' do
      turn = Turn.new("Juneau", card)
    
      expect(turn.card).to eq("What is the capital of Alaska?")
    end

    it 'returns a boolean indicating if the guess matched the answer on the Card' do
      turn = Turn.new("Juneau", card)

      expect(turn.card).to eq("Juneau")
      expect(turn.guess).to eq("Juneau")
    end

end