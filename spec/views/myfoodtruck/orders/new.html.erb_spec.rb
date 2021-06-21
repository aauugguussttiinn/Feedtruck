require 'rails_helper'

RSpec.describe "foodtruck/orders/new", type: :view do
  before(:each) do
    assign(:foodtruck_order, Foodtruck::Order.new())
  end

  it "renders new foodtruck_order form" do
    render

    assert_select "form[action=?][method=?]", foodtruck_orders_path, "post" do
    end
  end
end
