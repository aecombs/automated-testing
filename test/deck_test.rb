require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
    describe "Can create an instance" do
      it "Can be created" do
        # deck = Deck.new

        # expect(deck).must_be_instance_of Deck
      end

      it "will have 52 cards" do
        # deck = Deck.new
        # cards = deck.cards

        # expect(cards.length).must_equal 52
        # expect(deck.cards[0]).must_be_instance_of Card
      end
    end

    describe "Has shuffle method" do
      it "will shuffle" do
        # deck = Deck.new
        # first_card = deck.cards[0]
        # deck.shuffle

        # expect(deck).must_respond_to :shuffle
        # expect(deck.cards[0]).wont_equal first_card
      end
    end
    
    describe "Has draw method" do
      it "can be called" do


      end

      it "will return a card" do

      end

      it "will remove drawn card from the top of the deck" do

      end
    end
    describe "Has count method" do
      it "can be called" do


      end

      it "will return number of cards" do

      end
      
      it "will change when you draw cards from deck" do


      end
    end
end
