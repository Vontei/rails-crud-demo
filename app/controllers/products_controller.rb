class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end


  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    if @product.save
      redirect_to products_path
    else
      render :edit
    end

  end

  def product_params
    params.require(:product).permit(:name, :brand)
  end

  def destroy
    @product = Product.find(params[:id]).destroy
    redirect_to products_path
  end


end
