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
end