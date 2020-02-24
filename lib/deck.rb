
# deck.rb

require_relative 'card'

class Deck
  attr_reader :cards, :count

  def initialize
    @cards = [
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    ]
    @count = cards.length
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
