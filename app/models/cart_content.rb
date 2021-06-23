class CartContent < ApplicationRecord
    validates :item_quantity,
    numericality: { greater_than_or_equal_to: 1 }

    belongs_to :item
    belongs_to :cart
end