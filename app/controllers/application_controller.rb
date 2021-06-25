class ApplicationController < ActionController::Base
  include ApplicationHelper

  before_action :transfer_guest_cart_to_customer_cart

end
