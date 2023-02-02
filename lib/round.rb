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
   
    @number_correct += 1 if turn.correct?
    @categories_scores[current_card.category] += 1 if turn.correct?
   
    turns << turn
    
    turn
  end

  def number_correct_by_category(category)
    categories_scores[category]
  end

  def percent_correct
    (number_correct.to_f / turns.count * 100).round(1) 
  end

  def percent_correct_by_category(category)
    number_of_correct_turns_in_category = turns.select do |turn|
      turn.correct? && turn.card.category == category
    end.count
  
    number_of_cards_in_category = deck.cards.select do |card|
      card.category == category
    end.count
  
    (number_of_correct_turns_in_category.to_f / number_of_cards_in_category * 100).round(2)
  end
end