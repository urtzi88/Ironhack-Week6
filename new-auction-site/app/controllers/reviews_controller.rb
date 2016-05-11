class ReviewsController < ApplicationController

  def create
    product = Product.find(params[:product_id])
    review = product.reviews.create(
      description: params[:review][:description],
      user_id: current_user.id
    )
    redirect_to product_path(product)
  end

  def destroy
    product = Product.find(params[:product_id])
    review = product.reviews.find(params[:id])
    review.destroy
    redirect_to product_path(product)
  end

end
