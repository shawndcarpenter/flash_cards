class Deck
  attr_reader :cards, :requested_category_holder
  def initialize(cards)
    @cards = cards
    @requested_category_holder = []
  end

  def count
    cards.length
  end

  def cards_in_category(requested_category)
    @cards.each do |card|
      if card.category == requested_category
        requested_category_holder << card
      end
    end
  end

end
