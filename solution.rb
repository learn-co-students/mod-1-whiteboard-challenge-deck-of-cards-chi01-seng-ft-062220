require 'pry'
class Deck
    attr_reader :cards

    def initialize
        ranks = ["A", "2", "3", "4","5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits = ["Clubs", "Spades", "Diamonds", "Hearts"]
        @cards = []
        suits.each {|suit| ranks.each {|rank| cards << Card.new(suit, rank)}};
    end

    def choose_card
        @cards.delete_at(rand(@cards.size))
    end
end

class Card
    attr_reader :rank, :suit

    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end
end