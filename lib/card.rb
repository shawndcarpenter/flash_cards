class Card
    attr_reader :category, :answer
    def initialize(question, answer, category)
        @question = question
        @answer = answer
        @category = category
    end
end
