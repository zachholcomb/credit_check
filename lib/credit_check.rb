module CreditCheck
  def split_card_number_into_array(card_number)
    card_number_array = card_number.split("").map(&:to_i)
    double_every_other_digit(card_number_array)
  end

  def double_every_other_digit(card_number_array)
    card_number_array.map!.with_index do |num, place|
      if place.even?
        num * 2
      else
        num
      end
    end
    add_digits_of_numbers_above_ten(card_number_array)
  end

  def add_digits_of_numbers_above_ten(card_number_array)
    card_number_array.map! do |num|
      if num >= 10
        num.to_s.chars.map(&:to_i).sum
      else
        num
      end
    end
  sum_all_card_numbers(card_number_array)
  end

  def sum_all_card_numbers(card_number_array)
    sum_of_digits = card_number_array.sum
    divisible_by_ten(sum_of_digits)
  end

  def divisible_by_ten(sum_of_digits)
    validate = sum_of_digits % 10 == 0
    validate
  end
end
