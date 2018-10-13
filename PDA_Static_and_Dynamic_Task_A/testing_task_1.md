### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby
### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
class CardGame


  def checkforAce(card) # self.check_for_ace
    if card.value = 1 # card.value == 1
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # def not dif, (card1, card2), self.highest_card
  if card1.value > card2.value
    return card.name # "#{card1.value} of #{card1.suit}" or write class method 'name' in Card
  else
    card2 # return "#{card2.value} of #{card2.suit}"
  end
end
end

def self.cards_total(cards)
  total # needs value assigned, ie total = 0
  for card in cards
    total += card.value
    return "You have a total of" + total # total needs to be included in string interpolation
    # also needs moved to below the completion of the for loop or will just return the value
    # of the last item considered in the loop.
  end
end


```
