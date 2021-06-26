class SessionsController < ApplicationController
  def create
    cart = Cart.find
    session[:cart] = cart.id
  end

end
