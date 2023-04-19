class Category < ApplicationRecord
  has_many :category_products

  def products
    category_product.each do |category_product|
      p category_product
    end
  end
end
