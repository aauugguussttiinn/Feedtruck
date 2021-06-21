require 'rails_helper'

RSpec.describe "foodtruck/orders/show", type: :view do
  before(:each) do
    @foodtruck_order = assign(:foodtruck_order, Foodtruck::Order.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
