require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "total" do
    product = Product.new(price: 100)
    assert_in_delta 109, product.total
  end

  # test "is_discounted?" do
  #   product = Product.new(price: 11)
  #   assert_equal "not discounted", product.is_discounted?

  #   product = Product.new(price: 1)
  #   assert_equal "discounted", product.is_discounted?
  # end
end