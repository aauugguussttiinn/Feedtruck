class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy ]
  before_action :set_foodtruck, only: %i[ show edit update destroy index new]
  before_action :authenticate_foodtruck_owner, only: %i[ update ]

  # GET /items
  def index
    @items = Item.all.where(foodtruck_id: @foodtruck.id)
  end

  # GET /items/1
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, flash: { success: "Plat créé"} }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to myfoodtruck_foodtruck_path, flash: { success: "Plat mis à jour"} }
      else
        format.html { redirect_back(fallback_location: edit_myfoodtruck_foodtruck_item_path(@item.id), flash: { alert: "Le séparateur entre les euros et les centimes doit être exprimé sous forme de point (exemple: '11.50')" }) }
      end
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, flash: { success: "Plat détruit"} }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    def set_foodtruck
      @foodtruck = Foodtruck.find(params[:foodtruck_id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:name, :description, :price, :picture, :foodtruck_id, :id)
    end

    def authenticate_foodtruck_owner
      @item = Item.find(params[:id])
      @item_owner = @item.foodtruck.id
      unless @item_owner == current_myfoodtruck_foodtruck.id
        flash[:alert] = "Désolé, mais vous ne pouvez pas modifier un plat qui n'est pas le vôtre !"
        redirect_to myfoodtruck_foodtruck_path
      end
    end

end
