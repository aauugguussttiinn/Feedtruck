require 'rails_helper'

RSpec.describe "foodtrucks/new", type: :view do
  before(:each) do
    assign(:foodtruck, Foodtruck.new())
  end

  it "renders new foodtruck form" do
    render

    assert_select "form[action=?][method=?]", foodtrucks_path, "post" do
    end
  end
end
