class Myfoodtruck::RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(foodtruck)
    flash[:notice] = 'Bienvenue! Renseignez votre profil pour continuer'
    myfoodtruck_foodtruck_path
  end
  
end
