module FoodtrucksHelper

  def is_foodtruck_profile_completed?
    if current_myfoodtruck_foodtruck.pictures.attached? && current_myfoodtruck_foodtruck.name? && current_myfoodtruck_foodtruck.description? && current_myfoodtruck_foodtruck.location?
      return true
    else
      return false
    end
  end

end
