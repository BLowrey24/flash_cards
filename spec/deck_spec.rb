require './lib/card'
require './lib/turn'
require './lib/deck'

RSpec.describe Deck do
  
  let(:card_1) { Card.new("What is the capital of Alaska?", "Juneau", :Geography) }
  let(:card_2) { Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM) }
  let(:card_3) { Card.new("Describe in words the exact direction that is 697.5° clockwise from due north??", "North north west", :STEM) }
  
  let(:cards) { [card_1, card_2, card_3] }
  
  let(:deck) { Deck.new(cards) }

  describe '#initialize' do
    it 'exits' do
      expect(deck).to be_instance_of(Deck)
    end

    it 'has cards' do
      expect(deck.cards).to eq([card_1, card_2, card_3])
    end
  end

  describe '#count' do
    it 'can count the # of cards in the deck' do
      expect(deck.count).to eq(3)
    end
  end

  describe '#cards_in_category' do
    it 'can find cards in a specific category' do
      expect(deck.cards_in_category(:STEM)).to eq([card_2, card_3])
      expect(deck.cards_in_category(:Geography)).to eq([card_1])
      expect(deck.cards_in_category("Pop Culture")).to eq([])
    end
  end
  
  # describe '#add_card' do
  #  # it 'can add cards to deck' do
  #   #   deck.add_card(card_1)
  #   #   deck.add_card(card_2)
  #   #   deck.add_card(card_3)
  #   #   require 'pry'; binding.pry
  #   #   expect(deck.cards).to eq([card_1, card_2, card_3])
  #   # end
  # end
end