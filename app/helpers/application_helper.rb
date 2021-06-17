module ApplicationHelper
  def bulma_class_for_flash(type)
    case type
      when 'notice' then "is-success"
      when 'success' then "is-success"
      when 'error' then "is-danger"
      when 'alert' then "is-warning"
    end
  end
end
