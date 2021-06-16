require 'rails_helper'

RSpec.describe "foodtrucks/edit", type: :view do
  before(:each) do
    @foodtruck = assign(:foodtruck, Foodtruck.create!())
  end

  it "renders the edit foodtruck form" do
    render

    assert_select "form[action=?][method=?]", foodtruck_path(@foodtruck), "post" do
    end
  end
end
