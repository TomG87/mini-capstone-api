class ProductsController < ApplicationController


  def index
    @products = Product.all
    render :index
  end

  def show    
    @product =  Product.find_by(id: params[:id])
    render :show
  end
  
  def create
    if @product = Product.new(
      name: params[:name], 
      price: params[:price], 
      image_url: params[:image_url],
      description: params[:description],
      supplier_id: params[:supplier_id]
    )
      render :show
    else
      render json: {errors: @product.errors.full.message}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.supplier_id = params[:supplier_id] || @product.supplier_id
    @product.save
    render :show
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Product has been successfully removed"}
  end 
end
