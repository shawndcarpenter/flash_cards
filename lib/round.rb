class Round
  attr_reader :deck, :turns, :number_correct
  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
  end

  def current_card
    if @turns.count == 0
      deck.cards[0]
    elsif @turns.count == 1
      rotated_deck = deck.cards.rotate(1)
      rotated_deck[0]
    end
  end



  # def take_turn(guess)
  #   turn = Turn.new(guess, current_card)
  #   if @turns.empty?
  #    @turns << turn
  #   else
  #     deck.cards.rotate
  #     round.deck.cards.rotate
  #     @turns << turn
  #   end
  #   turn
  # end

  def take_turn(guess)
    #when called, turn is taken in to the turns array.
    #turn includes the current card and guess
    turn = Turn.new(guess, current_card)
    @turns << turn
    current_card
    turn
  end

  def number_correct
    if @guess == @answer
      @number_correct += 1
    end
  end

  def number_correct_by_category(category)
    if @guess == @answer
      
  end
#   def new_card
#     if @turns.count == 1
#       @turns.clear
#       deck.cards.to_a.pop 
#     end
#   end
end