class ApplicationController < ActionController::Base
  include ApplicationHelper

  def after_sign_in_path_for(customer)
    unless current_customer || current_myfoodtruck_foodtruck
      flash[:notice] = 'Connecté en tant que Gourmet'
      foodtrucks_path
    else
      super
    end
  end
end
