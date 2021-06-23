module CustomersHelper

  def current_customer_has_location?
    current_customer.location_id != nil ? true : false
  end
  
end
