class Product < ApplicationRecord

  def total_price
    total_price = price.to_f * 1.07
    return total_price
  end

  def upper_case
    upper_case = name.upcase
    return upper_case
  end
end