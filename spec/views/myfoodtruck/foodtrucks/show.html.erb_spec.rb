require 'rails_helper'

RSpec.describe "foodtruck/foodtrucks/show", type: :view do
  before(:each) do
    @foodtruck_foodtruck = assign(:foodtruck_foodtruck, Foodtruck::Foodtruck.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
