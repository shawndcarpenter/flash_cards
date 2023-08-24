class Round
  attr_reader :deck, :turns, :number_correct
  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
    @correct = []
  end

  def current_card
    if @turns.count == 0
      deck.cards[0]
    elsif @turns.count > 0
      # rotated_deck = deck.cards.rotate(1)
      # rotated_deck[0]
      @deck.cards.shift
    end
  end

  def take_turn(guess)
    #when called, turn is taken in to the turns array.
    #turn includes the current card and guess
    turn = Turn.new(guess, current_card)
      @turns << turn
      @deck.cards.shift
    turn
  end

  def number_correct
    if @guess == @answer
      @number_correct += 1
    end
  end


  def number_correct_by_category(requested_category)
    category_correct = 0
    @turns.each do |turn|
      if turn.correct? == true && turn.card.category == requested_category
        category_correct += 1
      end
    end
    #require 'pry';  binding.pry
    category_correct
    # @correct.count(requested_category)
    # # set up local variable integer zero
    # counter += 1
    # # iterate over @correct
    
    # @correct.each do |cor|
    #   @cor.count(requested_category)
    #   if turn.correct? && @category == requested_category
    #     category_correct += 1
    #   end
    #   category_correct
    # end
      
    # .each
    # if category matches requested category, increment by 1
    
    # once done iterating, return integer
  end
  def percent_correct
    (@number_correct / @turns.count) * 100.to_f
  end
end


#   def new_card
#     if @turns.count == 1
#       @turns.clear
#       deck.cards.to_a.pop 
#     end
#   end


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

