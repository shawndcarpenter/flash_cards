class Turn
    attr_reader :guess, :card
    # attr_accessor :answer
    def initialize(guess, card)
        @guess = guess
        @card = card

    end
    def guess
        @guess
    end

    def correct?
        @guess == card.answer
    end

    def card
        @card
    end

    def feedback
        if correct? == true
            "Correct!"
        elsif correct? == false
            "Incorrect."
        end
    end


end
