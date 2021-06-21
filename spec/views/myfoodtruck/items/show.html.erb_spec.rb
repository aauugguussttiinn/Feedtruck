require 'rails_helper'

RSpec.describe "foodtruck/items/show", type: :view do
  before(:each) do
    @foodtruck_item = assign(:foodtruck_item, Foodtruck::Item.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
