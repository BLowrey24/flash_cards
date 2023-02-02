require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

let(:card_1) { Card.new("What is the capital of Alaska?", "Juneau", :Geography) }
let(:card_2) { Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM) }
let(:card_3) { Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM) }
  
let(:deck) { Deck.new([card_1, card_2, card_3]) }
  
let(:round) { Round.new(deck) }

