class Myfoodtruck::OrdersController < ApplicationController
  before_action :set_foodtruck_order, only: %i[ show edit update destroy ]

  # GET /foodtruck/orders or /foodtruck/orders.json
  def index
    @foodtruck_orders = Foodtruck::Order.all
  end

  # GET /foodtruck/orders/1 or /foodtruck/orders/1.json
  def show
  end

  # GET /foodtruck/orders/new
  def new
    @foodtruck_order = Foodtruck::Order.new
  end

  # GET /foodtruck/orders/1/edit
  def edit
  end

  # POST /foodtruck/orders or /foodtruck/orders.json
  def create
    @foodtruck_order = Foodtruck::Order.new(foodtruck_order_params)
    

    respond_to do |format|
      if @foodtruck_order.save
        format.html { redirect_to @foodtruck_order, notice: "Order was successfully created." }
        format.json { render :show, status: :created, location: @foodtruck_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foodtruck_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodtruck/orders/1 or /foodtruck/orders/1.json
  def update

    if @foodtruck_order.is_ready != true
      @foodtruck_order.update(is_ready: true)
    end

    respond_to do |format|
      if @foodtruck_order.update(foodtruck_order_params)
        format.html { redirect_to root_path, notice: "Order was successfully updated." }
        format.json { render :show, status: :ok, location: @foodtruck_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foodtruck_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodtruck/orders/1 or /foodtruck/orders/1.json
  def destroy
    @foodtruck_order.destroy
    respond_to do |format|
      format.html { redirect_to foodtruck_orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodtruck_order
      @foodtruck_order = ::Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foodtruck_order_params
      params.permit(:id, :is_ready)
    end
end
