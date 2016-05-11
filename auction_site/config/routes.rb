Rails.application.routes.draw do

  get 'reviews/:create'

  devise_for :users

  get '/users' => 'users#index', as: :users
  get '/users/new' => 'users#new', as: :new_user
  post '/users'=> 'users#create'

  get '/products' => 'products#index', as: :products
  get '/:user_id/products/:product_id/show' => 'products#show', as: 'user_product_show'
  get '/:user_id/products' => 'products#user_index', as: :user_products
  get '/:user_id/products/new' => 'products#new'
  post '/:user_id/products' => 'products#create'

  post '/:user_id/:product_id/bid/new' => 'bids#new', as: :user_product_bids

  root to: 'users#index'

end
