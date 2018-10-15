### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
require('pry')

class CardGame

@card1 = Card.new('Spades',1)

  def self.check_for_ace(card)
    card.value == 1 ? true : false
  end

  def self.highest_card(card1, card2)
    # binding.pry
    if card1.value == card2.value
      return "Draw"
    elsif card1.value > card2.value
      return Card.name(card1)
    else
      return Card.name(card2)
    end
  end

  def self.cards_total(cards)
    total = 0
    cards.each {|card| total += card.value }
    return "You have a total of #{total} in your hand"
  end

end
