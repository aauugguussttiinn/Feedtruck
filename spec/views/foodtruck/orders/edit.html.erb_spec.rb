require 'rails_helper'

RSpec.describe "foodtruck/orders/edit", type: :view do
  before(:each) do
    @foodtruck_order = assign(:foodtruck_order, Foodtruck::Order.create!())
  end

  it "renders the edit foodtruck_order form" do
    render

    assert_select "form[action=?][method=?]", foodtruck_order_path(@foodtruck_order), "post" do
    end
  end
end
