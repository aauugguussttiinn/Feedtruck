class VotesController < ApplicationController
  # before_action :has_customer_voted?
  # before_action :customer_has_location?

  def create
    @customer = current_customer
    @foodtruck = Foodtruck.find(params[:foodtruck_id])

    @vote = Vote.new(vote: true, customer: @customer, foodtruck: @foodtruck)

    if @vote.save 
      flash[:notice] = "Vous avez voté"
      redirect_to @foodtruck

    else
      flash.now[:notice] = "Action impossible"
      redirect_to @foodtruck
    end
  end 

end
