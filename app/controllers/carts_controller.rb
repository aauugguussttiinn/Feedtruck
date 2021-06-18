class CartsController < ApplicationController
  before_action :authenticate_customer!, only: %i[ show ]

  # GET /carts/1
  def show
    @cart = current_customer.cart
    @cart_contents = CartContent.where(cart: @cart)
    puts "/" *150
    puts @cart.total_price.inspect
    puts @cart.inspect
    puts @cart.items.inspect
    puts @cart.items.first.inspect
  end

  private

    # Only allow a list of trusted parameters through.
    def cart_params
      params.require(:cart).permit(:is_ready, :stripe_customer_id, :customer_id, :foodtruck_id)
    end
end
