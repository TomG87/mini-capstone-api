require "test_helper"

class CartedProductTest < ActiveSupport::TestCase
  belongs_to :order, optional: true
end
