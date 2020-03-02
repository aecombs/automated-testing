require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
  describe "initialize method" do
    it "can be created" do
      deck = Deck.new

      expect(deck).must_be_instance_of Deck
    end

    it "will have 52 cards" do
      deck = Deck.new

      cards = deck.cards

      expect(cards.length).must_equal 52
      expect(deck.cards[0]).must_be_instance_of Card
    end
  end

  describe "shuffle method" do
    it "can be called" do
      deck = Deck.new
      
      expect(deck).must_respond_to :shuffle
    end

    it "will shuffle" do
      deck = Deck.new
      
      first_card = deck.cards[0]
      deck.shuffle

      expect(deck.cards[0]).wont_equal first_card
    end

    it "won't shuffle a deck if it has 1 or less cards" do
      deck = Deck.new

      51.times do
        deck.draw
      end

      expect { deck.shuffle }.must_raise ArgumentError
    end
  end
  
  describe "draw method" do
    it "can be called" do
      deck = Deck.new

      expect(deck).must_respond_to :draw
    end

    it "will return a card" do
      deck = Deck.new

      expect(deck.draw).must_be_instance_of Card
    end

    it "will draw a card from the top of the deck" do
      deck = Deck.new

      top_card = deck.cards.last

      expect(deck.draw).must_equal top_card
    end
    
    it "will remove a card from the deck" do
      deck = Deck.new

      top_card = deck.draw
      
      expect(deck.count).must_equal 51
      expect(deck.cards).wont_include top_card
    end

    it "will not return a card if deck is empty" do
      deck = Deck.new

      52.times do
        deck.draw
      end

      expect { deck.draw }.must_raise ArgumentError
    end
  end

  describe "count method" do
    it "can be called" do
      deck = Deck.new

      expect(deck).must_respond_to :count
    end

    it "will return number of cards" do
      deck = Deck.new

      expect(deck.count).must_equal 52
    end
    
    it "will be smaller after drawing cards from deck" do
      deck = Deck.new

      5.times do
        deck.draw
      end

      expect(deck.count).must_equal 47
    end

    it "will return 0 if deck is empty" do

    end
  end
end