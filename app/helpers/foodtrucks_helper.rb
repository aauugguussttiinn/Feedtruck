module FoodtrucksHelper

  def is_foodtruck_profile_completed?(foodtruck)
    foodtruck.name? && foodtruck.description? && foodtruck.location_id? && foodtruck.pictures.attached? && foodtruck.items.count > 0 ? true : false
  end

  def is_current_foodtruck_profile_completed?
    current_myfoodtruck_foodtruck.name? && current_myfoodtruck_foodtruck.description? && current_myfoodtruck_foodtruck.location_id? && current_myfoodtruck_foodtruck.pictures.attached? && current_myfoodtruck_foodtruck.items.count > 0 ? true : false
  end

end



