class Turn
    attr_reader :string, :card
    attr_accessor :answer
    def initialize(string, card)
        @string = string
        @card = card

    end
    def guess
        @string
    end

    def correct?
        @string == card.answer
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
