class SessionsController < ApplicationController
  def new
  end

  def create
    cart = Cart.find
    session[:cart] = cart.id
  end

  def destroy
  end
end
