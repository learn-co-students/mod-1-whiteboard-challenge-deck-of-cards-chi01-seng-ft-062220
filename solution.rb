require 'pry'

class Deck
    attr_accessor :cards

    def initialize
        @cards = Card.create_a_deck
    end

    def choose_card
        @cards.delete_at(rand(@cards.size))
    end
end

class Card
    attr_reader :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end

    def self.create_a_deck
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        suits.map {|suit| ranks.map {|rank| Card.new(suit, rank)}}.flatten
    end
end

# binding.pry