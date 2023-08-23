class Turn
    attr_reader :guess, :card
    attr_accessor :number_correct
    def initialize(guess, card)
        @guess = guess
        @card = card

    end
    def guess
        @guess
    end

    def correct?
        if @guess == card.answer
            # round.number_correct += 1
            true
        elsif @guess != card.answer
            false
        end
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
