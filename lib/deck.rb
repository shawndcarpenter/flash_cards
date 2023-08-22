class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def count
    cards.length
  end

  def cards_in_category(requested_category)
    @cards.select do |card|
      card.category == requested_category
    end
  end


end
