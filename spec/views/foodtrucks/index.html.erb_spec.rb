require 'rails_helper'

RSpec.describe "foodtrucks/index", type: :view do
  before(:each) do
    assign(:foodtrucks, [
      Foodtruck.create!(),
      Foodtruck.create!()
    ])
  end

  it "renders a list of foodtrucks" do
    render
  end
end
