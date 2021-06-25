class Myfoodtruck::RegistrationsController < Devise::RegistrationsController
  before_action :not_logged_in?, only:  %i[ new]

  def after_sign_up_path_for(foodtruck)
    flash[:notice] = 'Bienvenue! Renseignez votre profil pour continuer'
    myfoodtruck_foodtruck_path
  end
end
