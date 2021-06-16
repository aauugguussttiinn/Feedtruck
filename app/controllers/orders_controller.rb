class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy ]

  # GET /orders
  def index
    @orders = current_user.orders
  end

  # GET /orders/1
  def show
    @orders = current_user.orders
  end

  # GET /orders/new
  def new
    @cart = current_user.cart
    @total_price = @cart.total_price
  end

  # POST /orders
  def create
    @cart = current_user.cart
    @total_price = @cart.total_price
    # Before the rescue, at the beginning of the method
    @stripe_amount = @total_price * 100
    begin
        customer = Stripe::Customer.create({
        email: @customer.email,
        source: params[:stripeToken],
        })
        charge = Stripe::Charge.create({
        customer: customer.id,
        amount: @stripe_amount.to_i,
        description: "Réglez maintenant votre panier",
        currency: 'eur',
        })
    rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_order_path
    end

    # After the rescue, if the payment succeeded

    @order = Order.new(user: current_user, total_price: @total_price, stripe_customer_id: customer.id)
        
    if @order.save
        @cart_contents.each do |order_element|
            OrderContent.create(item: order_element.item, order: @order)
            order_element.destroy
        end
    else
        flash.now[:notice] = "Houston on a un problème"
        render :new
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
