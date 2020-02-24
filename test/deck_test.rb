require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
    describe "Can create an instance" do
      deck = Deck.new

      it "Can be created" do
        expect(deck).must_be_instance_of Deck
      end

      it "will have 52 cards" do
        cards = deck.cards

        expect(cards.length).must_equal 52
        expect(deck.cards[0]).must_be_instance_of Card
      end
    end

    describe "Has shuffle method" do
      deck = Deck.new
      it "can be called" do
        expect(deck).must_respond_to :shuffle
      end
      it "will shuffle" do
        first_card = deck.cards[0]
        deck.shuffle

        expect(deck.cards[0]).wont_equal first_card
      end
    end
    
    describe "Has draw method" do
      deck = Deck.new
      it "can be called" do
        expect(deck).must_respond_to :draw
      end

      it "will return a card" do
        expect(deck.draw).must_be_instance_of Card
      end

      it "will draw a card from the top of the deck" do
        top_card = deck.cards.last

        expect(deck.draw).must_equal top_card
      end
      
      it "will remove a card from the deck" do
        top_card = deck.draw
        
        expect(deck.count).must_equal 51
        expect(deck.cards).wont_include top_card
      end
    end
    describe "Has count method" do
      deck = Deck.new
      it "can be called" do
        expect(deck).must_respond_to :count
      end

      it "will return number of cards" do
        expect(deck.count).must_equal 52
      end
      
      it "will change when you draw cards from deck" do
        5.times do
          deck.draw
        end

        expect(deck.count).must_equal 47
      end
    end
end
