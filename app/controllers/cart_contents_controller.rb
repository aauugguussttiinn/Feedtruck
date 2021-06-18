class CartContentsController < ApplicationController
  include CartContentHelper
  before_action :authenticate_customer!, only: %i[ create ]
  
  def create
    @item = Item.find(params[:item])
    @cart_content = CartContent.new(cart: current_customer.cart, item: @item)
    respond_to do |format|
      if is_from_same_foodtruck?(@cart_content) && @cart_content.save
        format.html { redirect_back fallback_location: root_path, flash: { success: "1 #{@cart_content.item.name} à bien été ajouté au panier"} }
      else
        format.html { redirect_back fallback_location: root_path,
          flash: { error: "Veuillez commander tous vos articles chez le même Foodtruck"}}
      end
    end
  end
end 