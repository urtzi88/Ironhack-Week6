class UsersController < ApplicationController

  def index
    @users = User.order(:name)
  end

  def new
    @user = User.new
  end

  def create
    User.create(
      name: params[:user][:name].downcase.capitalize,
      email: params[:user][:email].downcase
    )
    redirect_to(users_path)
  end

end
