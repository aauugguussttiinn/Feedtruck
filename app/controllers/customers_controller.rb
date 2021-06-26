class CustomersController < ApplicationController
  before_action :authenticate_customer!, only: %i[ update destroy ]
  before_action :set_customer, only: %i[ show edit update destroy ]

  # GET /customers 
  def index
    @customers = Customer.all
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
    @locations = Location.all 
  end

  # POST /customers
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, flash: { success: "Profil créé"} }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1 
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, flash: { success: "Profil mis à jour"} }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  def destroy
    @customer.cart.destroy
    @customer.orders.map{|order| order.destroy}
    @customer.votes.map{|vote| vote.destroy}
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to root_path, flash: { success: "Votre compte a été supprimé. Nous espérons vous revoir bientôt !"} }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = current_customer
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.require(:customer).permit(:email, :password, :location_id, :first_name, :last_name, :avatar)
    end
end
