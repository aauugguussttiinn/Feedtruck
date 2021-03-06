class CartContentsController < ApplicationController
  include CartContentHelper
  before_action :current_shopping_cart, only: %i[ create destroy ]
  
  def create
    @item = Item.find(params[:item])
    @cart_content = CartContent.new(cart: current_shopping_cart, item: @item, item_quantity: params[:quantity])
    respond_to do |format|
      if is_from_same_foodtruck?(@cart_content) && @cart_content.save
        format.html { redirect_back fallback_location: root_path, flash: { success: "1 #{@cart_content.item.name} à bien été ajouté au panier"}}
        format.js {flash.now[:notice] = "1 #{@cart_content.item.name} à bien été ajouté au panier" }
      else
        format.html { redirect_back fallback_location: root_path, flash: { error: "Veuillez commander tous vos articles chez le même Foodtruck"}}
        format.js { flash.now[:alert] = "Veuillez commander tous vos articles chez le même Foodtruck"}
      end
    end
  end

  def destroy
    @cart_content = CartContent.where(id: params[:id]).first
    respond_to do |format|
      format.html do
        if @cart_content != nil
          @cart_content.destroy
          flash[:notice] = "L'item a été retiré du panier"
          redirect_back fallback_location: root_path
        else
          flash[:error] = "On a un probleme Houston"
          redirect_back fallback_location: root_path
        end
      end
  
      format.js do
        if @cart_content != nil
          @cart_content.destroy
            flash.now[:notice] = "L'item a été retiré du panier"
        else
          flash[:alert] = "On a un probleme Houston"
        end
      end
    end
  end 
  
end 