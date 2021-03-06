class Myfoodtruck::ItemsController < ApplicationController
  before_action :set_foodtruck_item, only: %i[ show edit update destroy ]

  # GET /foodtruck/items or /foodtruck/items.json
  def index
    @foodtruck_items = Item.all
  end

  # GET /foodtruck/items/new
  def new
    @foodtruck_item = Item.new.picture.attach(:picture)
  end

  # GET /foodtruck/items/1/edit
  def edit
    @myfoodtruck = current_myfoodtruck_foodtruck
    @item = Item.find(params[:id])
  end

  # POST /foodtruck/items or /foodtruck/items.json
  def create
    @foodtruck_item = Item.new(foodtruck_item_params)

    respond_to do |format|
      if @foodtruck_item.save
        format.html { redirect_to myfoodtruck_foodtruck_path, notice: "Votre plat a bien été créé." }
        format.json { render :show, status: :created, location: @foodtruck_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foodtruck_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodtruck/items/1 or /foodtruck/items/1.json
  def update
    respond_to do |format|
      if @foodtruck_item.update(foodtruck_item_params)
        format.html { redirect_to @myfoodtruck, notice: "Votre plat a bien été mis à jour." }
        format.json { render :show, status: :ok, location: @foodtruck_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foodtruck_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodtruck/items/1 or /foodtruck/items/1.json
  def destroy
    @foodtruck_item = Item.find(params[:id])
    @foodtruck_item.destroy
    respond_to do |format|
      format.html { redirect_to myfoodtruck_foodtruck_path, notice: "Votre plat a bien été supprimé" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodtruck_item
      @item = Item.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foodtruck_item_params
      params.permit(:id, :name, :description, :price, :picture).merge(foodtruck_id: current_myfoodtruck_foodtruck.id)
    end
    
end
