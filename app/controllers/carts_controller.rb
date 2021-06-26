class CartsController < ApplicationController
  def destroy
    current_shopping_cart.cart_contents.each do | content |
      content.destroy
    end
    redirect_to cart_path
  end
  
end
