class OrderContent < ApplicationRecord
  belongs_to :item
  belongs_to :order

  validates :item, presence: true
  validates :order, presence: true
  validates :item_quantity, presence: true, numericality: { greater_than_or_equal_to: 1 }

end
