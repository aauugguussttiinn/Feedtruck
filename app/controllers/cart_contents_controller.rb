class CartContentsController < ApplicationController
  before_action :set_cart_content, only: %i[ show edit update destroy ]
  
  def create
    puts "$"*150
    puts params
    @cart_content = CartContent.new(cart: current_customer.cart, item_id: params[:item_id])
    respond_to do |format|
      if @cart_content.save
        format.html { redirect_back fallback_location: root_path, notice: "cart_content was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_cart_content
    @cart_content = CartContent.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def cart_content_params
    params.require(:cart_content)
  end
end
