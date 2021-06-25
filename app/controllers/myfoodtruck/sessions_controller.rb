class Myfoodtruck::SessionsController < Devise::SessionsController

  def after_sign_in_path_for(foodtruck)
    flash[:notice] = 'Connecté en tant que Foodtruck'
    myfoodtruck_root_path
  end
end
