class Myfoodtruck::FoodtrucksController < ApplicationController
  before_action :set_foodtruck_foodtruck, only: %i[ show edit update destroy ]

  # GET /foodtruck/foodtrucks or /foodtruck/foodtrucks.json
  def index
    @foodtruck_foodtrucks = Foodtruck::Foodtruck.all
  end

  # GET /foodtruck/foodtrucks/1 or /foodtruck/foodtrucks/1.json
  def show
  end

  # GET /foodtruck/foodtrucks/new
  def new
    @foodtruck_foodtruck = Foodtruck::Foodtruck.new
  end

  # GET /foodtruck/foodtrucks/1/edit
  def edit
  end

  # POST /foodtruck/foodtrucks or /foodtruck/foodtrucks.json
  def create
    @foodtruck_foodtruck = Foodtruck::Foodtruck.new(foodtruck_foodtruck_params)

    respond_to do |format|
      if @foodtruck_foodtruck.save
        format.html { redirect_to @foodtruck_foodtruck, notice: "Foodtruck was successfully created." }
        format.json { render :show, status: :created, location: @foodtruck_foodtruck }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foodtruck_foodtruck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodtruck/foodtrucks/1 or /foodtruck/foodtrucks/1.json
  def update
    respond_to do |format|
      if @foodtruck_foodtruck.update(foodtruck_foodtruck_params)
        format.html { redirect_to @foodtruck_foodtruck, notice: "Foodtruck was successfully updated." }
        format.json { render :show, status: :ok, location: @foodtruck_foodtruck }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foodtruck_foodtruck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodtruck/foodtrucks/1 or /foodtruck/foodtrucks/1.json
  def destroy
    @foodtruck_foodtruck.destroy
    respond_to do |format|
      format.html { redirect_to foodtruck_foodtrucks_url, notice: "Foodtruck was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodtruck_foodtruck
      @foodtruck_foodtruck = Foodtruck::Foodtruck.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foodtruck_foodtruck_params
      params.fetch(:foodtruck_foodtruck, {})
    end
end
