class BidsController < ApplicationController

  def new
    user = User.find(params[:user_id])
    product = user.products.find(params[:product_id])
    product.bids.create(
      amount: params[:bid][:amount],
      user_id: params[:bid][:user_id]
    )
    redirect_to("/#{user.id}/products/#{product.id}/show")
  end

end
