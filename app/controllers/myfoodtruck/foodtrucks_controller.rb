class Myfoodtruck::FoodtrucksController < ApplicationController
  before_action :set_foodtruck_foodtruck, only: %i[ show edit update destroy ]

  # GET /foodtruck/foodtrucks/1 or /foodtruck/foodtrucks/1.json
  def show
  end

  # GET /foodtruck/foodtrucks/1/edit
  def edit
  end


  # PATCH/PUT /foodtruck/foodtrucks/1 or /foodtruck/foodtrucks/1.json
  def update
    respond_to do |format|
      if @myfoodtruck_foodtruck.update(myfoodtruck_foodtruck_params)
        format.html { redirect_to @myfoodtruck_foodtruck, notice: "Foodtruck was successfully updated." }
        format.json { render :show, status: :ok, location: @myfoodtruck_foodtruck }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @myfoodtruck_foodtruck.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodtruck_foodtruck
      @myfoodtruck_foodtruck = current_myfoodtruck_foodtruck
    end

    # Only allow a list of trusted parameters through.
    def myfoodtruck_foodtruck_params
      params.permit(:email, :password, :description, :name)
    end
end
