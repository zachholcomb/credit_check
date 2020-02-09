require './lib/credit_check'
class CreditCard
  include CreditCheck
  attr_reader :number, :limit

  def initialize(number, limit)
    @number = number
    @limit = limit
  end

  def last_four
    @number[12..15]
  end

  def is_valid?
    split_card_number_into_array(@number)
  end
end
