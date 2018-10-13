
class Card
  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def self.name(card)
    return "#{card.value} of #{card.suit}"
  end

end
