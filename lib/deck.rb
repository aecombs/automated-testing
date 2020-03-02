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
    if self.count < 1
      raise ArgumentError, "There are no cards left in this deck!"
    else
      @count -= 1
      return cards.pop
    end
  end

  def shuffle
    # shuffles the deck
    if self.count > 1
      @cards.shuffle!
    else
      raise ArgumentError, "There aren't enough cards left in this deck to shuffle!"
    end
  end
end
