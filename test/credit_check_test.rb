require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test
  def setup
    @credit_check = CreditCheck.new("5541808923795240")
  end

  def test_it_exists
    assert_instance_of CreditCheck, @credit_check
  end

  def test_it_runs
    valid_feedback = "The number 5541808923795240 is valid!"
    @credit_check2 = CreditCheck.new("5541801923795240")
    invalid_feedback = "The number 5541801923795240 is invalid!"
    assert_equal valid_feedback, @credit_check.split_card_number_into_array("5541808923795240")
    assert_equal invalid_feedback, @credit_check2.split_card_number_into_array("5541801923795240")
  end
end
