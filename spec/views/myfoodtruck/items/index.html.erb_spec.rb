require 'rails_helper'

RSpec.describe "foodtruck/items/index", type: :view do
  before(:each) do
    assign(:foodtruck_items, [
      Foodtruck::Item.create!(),
      Foodtruck::Item.create!()
    ])
  end

  it "renders a list of foodtruck/items" do
    render
  end
end
