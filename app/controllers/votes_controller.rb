class VotesController < ApplicationController
  def create
    @customer = current_customer
    @foodtruck = Foodtruck.find(params[:foodtruck_id])
    @vote = Vote.new(vote: true, customer: @customer, foodtruck: @foodtruck)

    if @vote.save 
      flash[:notice] = "Vous avez voté"
      redirect_to @foodtruck
    else
      flash[:error] = @vote.errors.full_messages
      redirect_to @foodtruck
    end
  end 

end
