class Cart < ApplicationRecord

    belongs_to :customer
    has_many :cart_contents
    has_many :items, through: :cart_contents

    def total_price
        unless self.items == nil
            self.items.map {|item| item.price}.reduce(:+)
        else
            return 0
        end
    end
end
