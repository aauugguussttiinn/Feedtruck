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
        format.js { render :file => "/app/views/cart_contents/not_logged_in.js.erb" }
      end
    end
  end
end
