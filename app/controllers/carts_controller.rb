class CartsController < ApplicationController

  # GET /carts/1
  def show
    @customer = current_customer
    @cart = @current_customer.cart
    @cart_contents = CartContent.where(cart: @cart)
  end

  private

    # Only allow a list of trusted parameters through.
    def cart_params
      params.require(:cart).permit(:is_ready, :stripe_customer_id, :customer_id, :foodtruck_id)
    end
end
