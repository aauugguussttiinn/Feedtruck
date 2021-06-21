require 'rails_helper'

RSpec.describe "foodtruck/dashboards/index", type: :view do
  before(:each) do
    assign(:foodtruck_dashboards, [
      Foodtruck::Dashboard.create!(),
      Foodtruck::Dashboard.create!()
    ])
  end

  it "renders a list of foodtruck/dashboards" do
    render
  end
end
