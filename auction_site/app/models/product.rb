class Product < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  has_many :bids, dependent: :destroy
end
