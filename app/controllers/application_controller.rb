class ApplicationController < ActionController::Base
  include ApplicationHelper

  before_action :transfer_guest_cart_to_customer_cart

  def after_sign_in_path_for(customer)
    flash[:notice] = 'Connecté en tant que Gourmet'
    foodtrucks_path
  end
end
