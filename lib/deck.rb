# deck.rb

require_relative 'card'
SUITS = [:hearts, :spades, :clubs, :diamonds]


class Deck
  attr_reader :cards, :count

  def initialize
    @cards = []
    SUITS.each do |suit|
      (1..13).each do |value|
        @cards << Card.new(value, suit)
      end
    end

    @count = 52
  end

  def draw
    # returns a card
    @count -= 1
    return cards.pop
  end

  def shuffle
    # shuffles the deck
    @cards.shuffle!
  end
end
