class ProductsController < ApplicationController


  def index
    @products = Product.all
    if current_user
      render :index
    else
      render json: {message: "You are not logged in! Denied"}, status: :unauthorized  
    end
  end

  def show    
    @product =  Product.find_by(id: params[:id])
    render :show
  end
  
  def create
    @product = Product.new(
      name: params[:name], 
      price: params[:price], 
      description: params[:description],
      supplier_id: params[:supplier_id]
    )
    if @product.save
      @image = Image.new(
        url: params[:id],
        product_id: @product.id
      )
      @image.save
      render :show
    else
      render json: {errors: @product.errors.full.message}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
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