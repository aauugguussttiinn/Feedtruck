require 'rails_helper'

RSpec.describe "foodtrucks/show", type: :view do
  before(:each) do
    @foodtruck = assign(:foodtruck, Foodtruck.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
