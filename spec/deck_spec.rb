require './lib/card'
require './lib/deck'

RSpec.describe Deck do
  let(:deck) { Deck.new(cards) }

  let(:card1) { Card.new("What is the capital of Alaska?", "Juneau", :Geography) }
  let(:card2) { Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM) }
  let(:card3) { Card.new("Describe in words the exact direction that is 697.5° clockwise from due north??", "North north west", :STEM) }

  describe '#initialize' do
    it 'exits' do
      expect(deck).to be_instance_of(Deck)
    end
  end
end