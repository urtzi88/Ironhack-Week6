module UsersHelper

  def get_product(id)
    return Product.find(id).title
  end

end
