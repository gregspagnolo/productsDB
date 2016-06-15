class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @comment = @product.comments
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Product was successfully created"
      redirect_to :root
    else
      flash[:errors] = @product.errors.full_messages
      redirect_to :back
    end
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
  end


  def update
    if Product.find(params[:id]).update(product_params)
      redirect_to :root
    else
      redirect_to :back
    end
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to :root
  end

  private
    def product_params
      params.require(:product).permit(:name, :description, :price, :category_id, :comment_id)
    end
end
