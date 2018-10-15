require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('testing_task_2.rb')
require_relative('card.rb')

class TestTestingTask < MiniTest::Test

  def setup()
    @card1 = Card.new('Spades',1)
    @card2 = Card.new('Clubs',3)
    @card3 = Card.new('Hearts', 10)
    @card4 = Card.new('Hearts', 3)

    @hand = [@card1, @card2, @card3]
  end

  def test_card_initialize()
    assert_equal('Spades', @card1.suit)
    assert_equal(1, @card1.value)
  end

  def test_check_for_ace__true()
    assert_equal(true, CardGame.check_for_ace(@card1))
  end

  def test_check_for_ace__false()
    assert_equal(false, CardGame.check_for_ace(@card2))
  end

  def test_highest_draw
    assert_equal("Draw", CardGame.highest_card(@card2, @card4))
  end

  def test_highest_card__2_higher_than_1
    assert_equal("10 of Hearts", CardGame.highest_card(@card2, @card3))
  end

  def test_highest_card__1_higher_than_2
    assert_equal("10 of Hearts", CardGame.highest_card(@card3, @card2))
  end

  def test_cards_total
    assert_equal("You have a total of 14 in your hand", CardGame.cards_total(@hand))
  end

end
