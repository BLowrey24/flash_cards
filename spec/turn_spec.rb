require './lib/turn'
require './lib/card'

RSpec.describe Turn do
  
  let(:turn) { Turn.new("Juneau", card) }
  let(:card) { Card.new("What is the capital of Alaska?", "Juneau", :Geography) }
  
  describe '#initialize' do
    it 'exists' do
      expect(turn).to be_instance_of(Turn)
    end

    it 'has attributes' do
      expect(turn.string).to eq("Juneau")
      expect(turn.card).to eq(card)
    end
  end

  describe '#guess' do
    it 'can make a guess' do
      expect(turn.guess).to eq ("Juneau")
    end
  end

  describe '#correct?' do
    it 'can return true or false' do
      expect(turn.correct?).to eq(true)
    end
  end

  describe '#feedback' do
    it 'gives feedback based on #correct?' do
      require 'pry'; binding.pry
      expect(turn.feedback).to eq("Correct!")
    end
  end
end