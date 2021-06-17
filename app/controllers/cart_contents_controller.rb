class CartContentsController < ApplicationController
  before_action :authenticate_customer!, only: %i[ create ]
  before_action :set_cart_content, only: %i[ show edit update destroy ]
  
  def create
    @item = Item.find(params[:item])
    @cart_content = CartContent.create(cart: current_customer.cart, item: @item)
    respond_to do |format|
      if @cart_content.save
        format.html { redirect_back fallback_location: root_path, flash: { success: "1 #{@cart_content.item.name} à bien été ajouté au panier"} }
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