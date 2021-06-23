class Myfoodtruck::DashboardsController < ApplicationController
  
  # GET /foodtruck/dashboard
  def show
    @id = current_myfoodtruck_foodtruck.id
    @orders = Order.where(foodtruck_id: @id).all
    @number_of_votes = current_myfoodtruck_foodtruck.number_of_votes_last_24h
    @votes_ranking = current_myfoodtruck_foodtruck.location_most_voted
  end

end
