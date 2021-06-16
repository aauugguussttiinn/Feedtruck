class Order < ApplicationRecord

  belongs_to :customer
  belongs_to :foodtruck
  has_many :order_contents
  has_many :items, through: :order_contents

  def order_total_price
    @cart = current_user.cart
    @cart_contents = CartContent.where(cart: @cart)
    if @cart_contents.items !=nil
      @cart_contents.items.map {|element| element.price}.reduce(0) {|sum, price| sum + price}
    else
        return 0
    end
end

end
