class Product < ApplicationRecord

  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products

  validates :name, length: {minimum:3}
  validates :price, presence: true
  validates :description, length: {maximum: 500} 
  

end