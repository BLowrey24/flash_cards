class Round
  attr_reader :deck, :turns, :number_correct

  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
  end

  def current_card
    deck.cards[turns.count]
  end

  def take_turn(guess)
    turn = Turn.new(guess, current_card)
    turns << turn
    @number_correct += 1 if turn.correct?
    turn
  end
end