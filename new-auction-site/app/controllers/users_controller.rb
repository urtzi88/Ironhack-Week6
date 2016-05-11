class UsersController < ApplicationController

  def profile
    if user_signed_in?
      @user = current_user
      @reviews = @user.reviews
      render 'users/profile'
    else
      redirect_to products_path
    end
  end
end
