class CartedProductsController < ApplicationController

  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quanatity],
      status: "carted"
    )
    @carted_product.save
    render :show
  end

  def index
    while current_user.id == true 
        if CartedProducts.status == "carted"
          render :index
        else
          render json: {message: "only carted items will show"}
        end
    end
  end
end
