class OrdersController < ApplicationController
  before_action :authenticate_customer!, only: %i[ create ]
  before_action :set_order, only: %i[ show edit update destroy ]

  # GET /orders
  def index
    @orders = current_customer.orders
  end

  # GET /orders/1
  def show
    @orders = current_customer.orders
  end

  # GET /orders/new
  def new
    @cart = current_customer.cart
    @total_price = @cart.total_price
  end

  # POST /orders
  def create
    @cart = current_customer.cart
    @total_price = @cart.total_price
    @foodtruck = @cart.items.first != nil ? @cart.items.first.foodtruck : @order.foodtruck

    # Before the rescue, at the beginning of the method
    @stripe_amount = @total_price * 100
    begin
      customer = Stripe::Customer.create({
      email: current_customer.email,
      source: params[:stripeToken],
      })
      charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @stripe_amount.to_i,
      description: "Réglez maintenant votre panier",
      currency: 'eur',
      })
      if customer && charge.paid
        @order = Order.new(customer: current_customer, stripe_customer_id: customer.id, foodtruck: @foodtruck)
        if @order.save
          flash[:success] = "Vous avez bien payé #{@total_price}"
          redirect_to foodtrucks_path
        else
          flash.now[:error] = "Houston on a un problème"
          render :new
        end    
      end
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_order_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:is_ready, :stripe_customer_id, :customer_id, :foodtruck_id)
    end
end
