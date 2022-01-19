class ProductController < ApplicationController
  def index
    @products = Product.all
  end

  def new 
    @product = Product.new
  end

  def create
    @product = Product.create(params.require(:product).permit(:name, :description, :price))
    if @product.valid?
      redirect_to products_path
    else
      flash[:errors] = @product.errors.full_messages
      redirect_to new_product_path
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
    @product.update(params.require(:product).permit(:name, :description, :price))
    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to product_path
  end
end
