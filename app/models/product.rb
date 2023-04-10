class Product < ApplicationRecord

  validates :name, length: {minimum:3}
  validates :price, presence: true
  validates :description, length: {maximum: 500} 

  def tax
    tax = price * 0.09
    return tax
  end
  
  def supplier
    Supplier.find_by(id:supplier_id)
  end

  def total
    total = price + tax
    return total
  end

  def is_discounted?
    if price <= 10 
      return true
    else
      return false
    end
  end
end