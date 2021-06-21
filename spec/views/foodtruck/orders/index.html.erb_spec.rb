require 'rails_helper'

RSpec.describe "foodtruck/orders/index", type: :view do
  before(:each) do
    assign(:foodtruck_orders, [
      Foodtruck::Order.create!(),
      Foodtruck::Order.create!()
    ])
  end

  it "renders a list of foodtruck/orders" do
    render
  end
end
