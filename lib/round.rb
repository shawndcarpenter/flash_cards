class Round
  attr_reader :deck, :turns
  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
  end

  def take_turn(guess)
    turn = Turn.new(guess, current_card)
    @turns << turn
    turn
    
  end

  def current_card
    deck.cards[0]
  end

  def number_correct
    if @guess == deck.cards[0].answer
      @number_correct += 1
    end
  end

  


end