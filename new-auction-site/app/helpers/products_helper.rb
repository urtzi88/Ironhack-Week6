module ProductsHelper

  def get_user_name(product)
    return User.find(product.user_id).name
  end

end
