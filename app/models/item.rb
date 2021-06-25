class Item < ApplicationRecord
  belongs_to :foodtruck
  has_many :order_contents
  has_many :orders, through: :order_contents
  has_many :cart_contents
  has_many :carts, through: :cart_contents
  has_one_attached :picture

  validates :name, presence: true, length: { in: 3..120 }
  validates :description, presence: true, length: { in: 20..1000 }
  validates :price, presence: true, numericality: { greater_than: 0 }

end

