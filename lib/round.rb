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
    elsif @turns.count == 1
      rotated_deck = deck.cards.rotate(1)
      rotated_deck[0]
    end
  end

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

  def number_correct_by_category(requested_category)
    @correct << @category
  
    #require 'pry';  binding.pry
    @correct.count(requested_category)
    # set up local variable integer zero
    counter += 1
    # iterate over @correct
    @correct.each do |cor|
      
      cor.select(requested_category)
      if @category == requested_category
        counter += 1
      end
    end
    # .each
    # if category matches requested category, increment by 1
    
    # once done iterating, return integer
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

