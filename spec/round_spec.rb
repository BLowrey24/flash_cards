require './lib/card'
require './lib/turn'
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
      expect(round.number_correct).to eq(1)
    end

    it 'advances to the next card' do
      round.take_turn("Juneau")
      expect(round.current_card).to eq(card_2)

      round.take_turn("Venus")
      expect(round.current_card).to eq(card_3)
    end
  end

  describe '#number_correct_by_category' do
    it 'keeps track of the number of correct turns by category' do
      round.take_turn("Juneau")

      expect(round.number_correct_by_category(:Geography)).to eq(1)
      expect(round.number_correct_by_category(:STEM)).to eq(0)
    end
  end

  describe '#percent_correct' do
    it 'calculates the percentage of correct answers' do
      round.take_turn("Juneau")
      round.take_turn("Venus")

      expect(round.percent_correct).to eq(50.0)
    end
  end

  describe '#percent_correct_by_category' do
    it 'calculates the percentage of correct answers by category' do
      round.take_turn("Juneau")
      require 'pry'; binding.pry
      expect(round.percent_correct_by_category(:Geography)).to eq(100.0)
    end
  end
end