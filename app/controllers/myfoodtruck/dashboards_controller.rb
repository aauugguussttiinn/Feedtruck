class Myfoodtruck::DashboardsController < ApplicationController
  
  # GET /foodtruck/dashboard
  def show
    @id = current_myfoodtruck_foodtruck.id
    @orders = Order.where(foodtruck_id: @id).all
  end

end
