class Turn
  attr_reader :string,
              :card

  def initialize(string, card)
    @string = string
    @card = card
  end

  def guess
    @string
  end

  def correct?
    true if guess == @string
  end
end