require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_card'

class CreditCardTest < Minitest::Test
  def setup
    @credit_card = CreditCard.new("5541808923795240", 15000)
  end

  def test_it_exists_and_has_attributes
    assert_instance_of CreditCard, @credit_card
    assert_equal "5541808923795240", @credit_card.number
    assert_equal 15000, @credit_card.limit
  end

  def test_it_can_find_last_four_digits
    assert_equal "5240",@credit_card.last_four
  end

  def test_it_can_tell_if_credit_card_is_valid
    assert_equal true, @credit_card.is_valid?
  end
end
