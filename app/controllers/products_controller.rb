class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end


  def create
    @product = Product.new(post_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end


  def post_params
    params.require(:product).permit(:name, :brand)
  end


end
