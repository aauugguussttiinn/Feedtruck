class CartContent < ApplicationRecord
  belongs_to :item
  belongs_to :cart

  validates :item, presence: true
  validates :cart, presence: true
  validates :item_quantity, presence: true, numericality: { greater_than_or_equal_to: 1 }

end