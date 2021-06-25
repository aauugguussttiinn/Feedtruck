class ApplicationController < ActionController::Base
  include ApplicationHelper
  before_action :not_logged_in?, only: %i[ new ], if: :devise_controller?

  before_action :transfer_guest_cart_to_customer_cart

  def after_sign_in_path_for(customer)
    unless current_customer || current_myfoodtruck_foodtruck
      flash[:notice] = 'Connecté en tant que Gourmet'
      foodtrucks_path
    else
      super
    end
  end
end
