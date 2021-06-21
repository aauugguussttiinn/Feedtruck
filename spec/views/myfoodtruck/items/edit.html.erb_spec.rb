require 'rails_helper'

RSpec.describe "foodtruck/items/edit", type: :view do
  before(:each) do
    @foodtruck_item = assign(:foodtruck_item, Foodtruck::Item.create!())
  end

  it "renders the edit foodtruck_item form" do
    render

    assert_select "form[action=?][method=?]", foodtruck_item_path(@foodtruck_item), "post" do
    end
  end
end
