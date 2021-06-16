class CartsController < ApplicationController
  before_action :set_cart, only: %i[ show ]

  # GET /carts/1
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_params
      params.require(:cart).permit(:is_ready, :stripe_customer_id, :customer_id, :foodtruck_id)
    end
end
