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
      deck.cards[0]
    end
  end


  def take_turn(guess)
    #when called, turn is taken in to the turns array.
    #turn includes the current card and guess
    turn = Turn.new(guess, current_card)
      @turns << turn
      @deck.cards.shift
      current_card
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
  end


  def percent_correct
    (number_correct.to_f / turns.count.to_f) * 100
  end


  def percent_correct_by_category(requested_category)
   # require 'pry';  binding.pry
    (number_correct_by_category(requested_category).to_f) /(deck.cards_in_category(requested_category).count.to_f) * 100
# giving zero for cards in category
  end
end


