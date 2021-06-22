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
end
