class Round
  attr_reader :deck, :turns, :number_correct
  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
  end

  def current_card
    deck.cards[0]
  end

  def take_turn(guess)
    turn = Turn.new(guess, current_card)
    if @turns.empty? == true
     @turns << turn
    elsif @turns.empty? == false
      round.deck.cards.rotate
      @turns << turn
    end
    turn
  end

  def number_correct
    if @guess == @answer
      @number_correct += 1
    end
  end
  # def new_card
  #   if @turns.empty? == false
  #     round.deck.cards.rotate
  #   end
  # end
end