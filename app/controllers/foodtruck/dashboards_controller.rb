class Foodtruck::DashboardsController < ApplicationController
  before_action :set_foodtruck_dashboard, only: %i[ show edit update destroy ]

  # GET /foodtruck/dashboards or /foodtruck/dashboards.json
  def index
    @foodtruck_dashboards = Foodtruck::Dashboard.all
  end

  # GET /foodtruck/dashboards/1 or /foodtruck/dashboards/1.json
  def show
  end

  # GET /foodtruck/dashboards/new
  def new
    @foodtruck_dashboard = Foodtruck::Dashboard.new
  end

  # GET /foodtruck/dashboards/1/edit
  def edit
  end

  # POST /foodtruck/dashboards or /foodtruck/dashboards.json
  def create
    @foodtruck_dashboard = Foodtruck::Dashboard.new(foodtruck_dashboard_params)

    respond_to do |format|
      if @foodtruck_dashboard.save
        format.html { redirect_to @foodtruck_dashboard, notice: "Dashboard was successfully created." }
        format.json { render :show, status: :created, location: @foodtruck_dashboard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foodtruck_dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodtruck/dashboards/1 or /foodtruck/dashboards/1.json
  def update
    respond_to do |format|
      if @foodtruck_dashboard.update(foodtruck_dashboard_params)
        format.html { redirect_to @foodtruck_dashboard, notice: "Dashboard was successfully updated." }
        format.json { render :show, status: :ok, location: @foodtruck_dashboard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foodtruck_dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodtruck/dashboards/1 or /foodtruck/dashboards/1.json
  def destroy
    @foodtruck_dashboard.destroy
    respond_to do |format|
      format.html { redirect_to foodtruck_dashboards_url, notice: "Dashboard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodtruck_dashboard
      @foodtruck_dashboard = Foodtruck::Dashboard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foodtruck_dashboard_params
      params.fetch(:foodtruck_dashboard, {})
    end
end
