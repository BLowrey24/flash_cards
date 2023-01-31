class Round
  attr_reader :deck, 
              :turns, 
              :number_correct,
              :categories_scores

  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
    @categories_scores = Hash.new(0)
  end

  def current_card
    deck.cards[turns.count]
  end

  def take_turn(guess)
    turn = Turn.new(guess, current_card)
    turns << turn
    @number_correct += 1 if turn.correct?
    @categories_scores[current_card.category] += 1 if turn.correct?
    turn
  end

  def number_correct_by_category(category)
    categories_scores[category]
  end
end