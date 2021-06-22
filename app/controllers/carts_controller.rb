class CartsController < ApplicationController
  before_action :authenticate_customer!, only: %i[ show ]

  # GET /carts/1
  def show
    @cart = current_customer.cart
    @cart_contents = CartContent.where(cart: @cart)
  end
end
