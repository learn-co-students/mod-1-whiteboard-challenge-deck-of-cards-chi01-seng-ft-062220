require 'pry'

class Deck
    attr_accessor :cards, :suit, :rank, :deck

    def initialize
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits = ["Hearts", "Clubs", "Diamonds", "Spades"] 
        @cards = []
        suits.each {|suit| ranks.each {|rank| cards << Card.new(suit, rank)}}
    end

    def choose_card
        @cards.delete_at(rand(@cards.size))
    end
end

class Card
    attr_accessor :rank, :suit
    @@all = []

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
        @@all << self
    end

    def self.all
        @@all
    end
end

# binding.pry