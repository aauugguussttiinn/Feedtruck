class Item < ApplicationRecord

  belongs_to :foodtruck
  has_many :order_contents
  has_many :orders, through: :order_contents
  has_many :cart_contents
  has_many :carts, through: :cart_contents
  has_one_attached :picture

end

