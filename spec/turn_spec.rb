require './lib/turn'
require './lib/card'

RSpec.describe Turn do
  
  let(:turn_1) { Turn.new("Juneau", card_1) }
  let(:card_1) { Card.new("What is the capital of Alaska?", "Juneau", :Geography) }
  
  let(:turn_2) { Turn.new("Saturn", card_2) }
  let(:card_2) { Card.new("Which planet is closest to the sun?", "Mercury", :STEM) }
  
  describe '#initialize' do
    it 'exists' do
      expect(turn_1).to be_instance_of(Turn)
      expect(turn_2).to be_instance_of(Turn)
    end

    it 'has attributes' do
      expect(turn_1.string).to eq("Juneau")
      expect(turn_1.card).to eq(card1)
      
      expect(turn_2.string).to eq("Saturn")
      expect(turn_2.card).to eq(card2)
    end
  end

  describe '#guess' do
    it 'can make a guess' do
      expect(turn_1.guess).to eq ("Juneau")
      expect(turn_2.guess).to eq ("Saturn")
    end
  end

  describe '#correct?' do
    it 'can return true or false' do
      expect(turn_1.correct?).to eq(true)
      expect(turn_2.correct?).to eq(false)
    end
  end

  describe '#feedback' do
    it 'gives feedback based on #correct?' do
      expect(turn_1.feedback).to eq("Correct!")
      expect(turn_2.feedback).to eq("Incorrect.")
    end
  end
end