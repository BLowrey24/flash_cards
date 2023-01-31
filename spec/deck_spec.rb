require './lib/card'
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

    it 'has attributes' do
      expect(deck.cards).to eq([card_1, card_2, card_3])
    end

    # it 'can add cards to deck' do
    #   deck.add_card(card_1)
    #   deck.add_card(card_2)
    #   deck.add_card(card_3)
    #   require 'pry'; binding.pry
    #   expect(deck.cards).to eq([card_1, card_2, card_3])
    # end
  end
end