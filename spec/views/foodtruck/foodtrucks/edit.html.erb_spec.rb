require 'rails_helper'

RSpec.describe "foodtruck/foodtrucks/edit", type: :view do
  before(:each) do
    @foodtruck_foodtruck = assign(:foodtruck_foodtruck, Foodtruck::Foodtruck.create!())
  end

  it "renders the edit foodtruck_foodtruck form" do
    render

    assert_select "form[action=?][method=?]", foodtruck_foodtruck_path(@foodtruck_foodtruck), "post" do
    end
  end
end
