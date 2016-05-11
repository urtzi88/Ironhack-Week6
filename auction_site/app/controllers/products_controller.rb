class ProductsController < ApplicationController

  def index
    @users = User.all
    @products = Product.order(:deadline)
  end

  def user_index
    @user = User.find(params[:user_id])
    @products = @user.products.order(:deadline)
  end

  def new
    @user = User.find(params[:user_id])
    @product = @user.products.new
  end

  def create
    user = User.find(params[:user_id])
    user.products.create(
      title: params[:product][:title],
      description: params[:product][:description],
      deadline: Date.parse(params[:product][:deadline])
    )
    redirect_to("/#{user.id}/products")
  end

  def show
    @user = User.find(params[:user_id])
    @product = @user.products.find(params[:product_id])
    @bids = @product.bids
    @bid = @product.bids.new
  end

end
