require './lib/card'
require './lib/deck'
require './lib/round'

RSpec.describe Round do
  let(:card_1) { Card.new("What is the capital of Alaska?", "Juneau", :Geography) }
  let(:card_2) { Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM) }
  let(:card_3) { Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM) }
  
  let(:deck) { Deck.new([card_1, card_2, card_3]) }
  
  let(:round) { Round.new(deck) }

  describe '#initialize' do
    it 'exists' do
      expect(round).to be_instance_of(Round)
    end

    it 'has attributes' do
      expect(round.deck).to eq(deck)
      expect(round.turns).to eq([])
    end
  end

  describe '#current_card' do
    it 'returns the current card' do
      expect(round.current_card).to eq(card_1)
    end
  end

  describe '#take_turn' do
    it 'can take a turn' do
      new_turn = round.take_turn("Juneau")
      expect(new_turn).to be_instance_of(Turn)
      expect(new_turn.correct?).to eq(true)
    end
  end
end