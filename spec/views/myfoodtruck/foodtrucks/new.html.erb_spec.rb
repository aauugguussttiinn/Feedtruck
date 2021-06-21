require 'rails_helper'

RSpec.describe "foodtruck/foodtrucks/new", type: :view do
  before(:each) do
    assign(:foodtruck_foodtruck, Foodtruck::Foodtruck.new())
  end

  it "renders new foodtruck_foodtruck form" do
    render

    assert_select "form[action=?][method=?]", foodtruck_foodtrucks_path, "post" do
    end
  end
end
