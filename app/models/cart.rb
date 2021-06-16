class Cart < ApplicationRecord

    belongs_to :customer
    has_many :cart_contents
    has_many :items, through: :cart_contents

end
