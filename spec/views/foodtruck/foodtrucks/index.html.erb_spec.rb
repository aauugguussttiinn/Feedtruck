require 'rails_helper'

RSpec.describe "foodtruck/foodtrucks/index", type: :view do
  before(:each) do
    assign(:foodtruck_foodtrucks, [
      Foodtruck::Foodtruck.create!(),
      Foodtruck::Foodtruck.create!()
    ])
  end

  it "renders a list of foodtruck/foodtrucks" do
    render
  end
end
