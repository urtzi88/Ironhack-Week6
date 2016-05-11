module ProductsHelper
  def print_user_name(params)
    User.find(params).name
  end

  def check_id_bids(params)
    if Product.find(params).bids.count != 0
      true
    else
      false
    end
  end
end
