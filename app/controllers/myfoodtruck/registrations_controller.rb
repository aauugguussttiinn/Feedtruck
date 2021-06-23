class Myfoodtruck::RegistrationsController < Devise::RegistrationsController
  before_action :not_logged_in?, only:  %i[ new]
end
