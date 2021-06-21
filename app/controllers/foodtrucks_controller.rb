class FoodtrucksController < ApplicationController
  before_action :set_foodtruck, only: %i[ show edit update destroy ]

  # GET /foodtrucks
  def index
    @foodtrucks = Foodtruck.all
  end

  # GET /foodtrucks/1
  def show
  end

  # GET /foodtrucks/new
  def new
    @foodtruck = Foodtruck.new
  end

  # GET /foodtrucks/1/edit
  def edit
  end

  # POST /foodtrucks
  def create
    @foodtruck = Foodtruck.new(foodtruck_params)

    respond_to do |format|
      if @foodtruck.save
        format.html { redirect_to @foodtruck, flash: { success: "Profil créé"} }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodtrucks/1
  def update
    respond_to do |format|
      if @foodtruck.update(foodtruck_params)
        format.html { redirect_to @foodtruck, flash: { success: "Profil mis à jour"} }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodtrucks/1
  def destroy
    @foodtruck.destroy
    respond_to do |format|
      format.html { redirect_to foodtrucks_url, flash: { success: "Profil détruit"} }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodtruck
      @foodtruck = Foodtruck.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foodtruck_params
      params.require(:foodtruck).permit(:email, :password)
    end
end
