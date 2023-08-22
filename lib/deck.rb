class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  # def add_cards(cards)
  #   @cards << cards
  # end

  def count
    cards.length
  end

  def cards_in_category(requested_category)
    # if card has this category, return the card
    # cards.each do |card|
    #   if card.category == requested_category
    #     return card
    #   end
    # end
    @cards.select do |card|
      card.category == requested_category
    end
  end

end
