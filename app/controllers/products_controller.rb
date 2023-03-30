class ProductsController < ApplicationController

  # def sole
  #   @product = Product.first
  #   render template: "products/show"
  # end

  # def index
  #   @products = Product.all
  #   render template: "products/index"
  # end

  def index
    @products = Product.all
    render :index
  end

  def show    
    @product =  Product.find_by(id: params[:id])
    render :show
  end
end
