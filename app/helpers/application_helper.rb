module ApplicationHelper
  def bulma_class_for_flash(type)
    case type
      when 'notice' then "is-success"
      when 'success' then "is-success"
      when 'error' then "is-danger"
      when 'alert' then "is-warning"
    end
  end

  def authenticate_cust!
    unless current_customer
      respond_to do |format|
        format.js { redirect_back fallback_location: root_path,
          flash: { alert: "Vous devez vous connecter ou vous inscrire pour continuer."}}
      end
    end
  end

  def not_logged_in?
    if customer_signed_in? || myfoodtruck_foodtruck_signed_in?
      redirect_back fallback_location: root_path
      flash[:alert] = "Vous devez vous déconnecter de votre compte actuel avant de continuer"
    end
  end

  def current_shopping_cart
    if customer_signed_in?
      @shopping_cart = current_customer.cart
    elsif !myfoodtruck_foodtruck_signed_in?
      if session[:cart]
        @shopping_cart = Cart.find(session[:cart])
      else
        @new_cart = Cart.create
        session[:cart] = @new_cart.id
        @shopping_cart = Cart.find(session[:cart])
      end
    end
  end

  def transfer_guest_cart_to_customer_cart
    if customer_signed_in?
      if session[:cart]
        guest_cart = Cart.find(session[:cart])
        if guest_cart.items.count > 0
          if current_shopping_cart.items.count > 0 && guest_cart.items.last.foodtruck.id != current_shopping_cart.items.last.foodtruck.id
            CartContent.where(cart_id: current_shopping_cart.id).delete_all
          end
          guest_cart.cart_contents.each { |content| CartContent.create(cart_id: current_shopping_cart.id, item_id: content.item.id, item_quantity: content.item_quantity) }
          CartContent.where(cart_id: guest_cart.id).delete_all
          guest_cart.destroy
          session[:cart] = nil
        end
      end
    end
  end

end