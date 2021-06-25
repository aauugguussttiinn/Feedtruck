class ApplicationController < ActionController::Base
  include ApplicationHelper

  def after_sign_in_path_for(customer)
    flash[:notice] = 'Connecté en tant que Gourmet'
    foodtrucks_path
  end
end
