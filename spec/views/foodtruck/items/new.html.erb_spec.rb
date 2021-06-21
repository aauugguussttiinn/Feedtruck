require 'rails_helper'

RSpec.describe "foodtruck/items/new", type: :view do
  before(:each) do
    assign(:foodtruck_item, Foodtruck::Item.new())
  end

  it "renders new foodtruck_item form" do
    render

    assert_select "form[action=?][method=?]", foodtruck_items_path, "post" do
    end
  end
end
