require './lib/turn'
require './lib/card'

RSpec.describe Turn do
  
  let(:turn1) { Turn.new("Juneau", card1) }
  let(:card1) { Card.new("What is the capital of Alaska?", "Juneau", :Geography) }
  
  let(:turn2) { Turn.new("Saturn", card2) }
  let(:card2) { Card.new("Which planet is closest to the sun?", "Mercury", :STEM) }
  
  describe '#initialize' do
    it 'exists' do
      expect(turn1).to be_instance_of(Turn)
      expect(turn2).to be_instance_of(Turn)
    end

    it 'has attributes' do
      expect(turn1.string).to eq("Juneau")
      expect(turn1.card).to eq(card1)
      
      expect(turn2.string).to eq("Saturn")
      expect(turn2.card).to eq(card2)

    end
  end

  describe '#guess' do
    it 'can make a guess' do
      expect(turn1.guess).to eq ("Juneau")
      expect(turn2.guess).to eq ("Saturn")
    end
  end

  describe '#correct?' do
    it 'can return true or false' do
      expect(turn1.correct?).to eq(true)
      expect(turn2.correct?).to eq(false)
    end
  end

  describe '#feedback' do
    it 'gives feedback based on #correct?' do
      expect(turn1.feedback).to eq("Correct!")
      expect(turn2.feedback).to eq("Incorrect.")
    end
  end
end