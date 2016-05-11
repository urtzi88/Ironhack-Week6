class ProductsController < ApplicationController

  def index
    @products = Product.all
    if user_signed_in?
      @my_products = current_user.products
    end
  end

  def show
    @product = Product.find(params[:id])
    @review = @product.reviews.new
    @reviews = @product.reviews
  end

  def new
    @product = Product.new
  end

  def create
    @product = current_user.products.create(get_params)
    redirect_to products_path
  end

  def edit
    @product = current_user.products.find(params[:id])
    render('new')
  end

  def update
    @product = current_user.products.find(params[:id]).update(get_params)
    redirect_to products_path
  end

  def destroy
    product = Product.find(params[:id])
    if current_user.id == product.user_id
      product.destroy
      flash[:notice] = 'Product deleted!'
      redirect_to products_path
    else
      flash[:alert] = 'You can only remove your own itmes...'
      redirect_to products_path
    end
  end

  private
    def get_params
      params.require(:product).permit(:title, :description, :user_id)
    end

end
