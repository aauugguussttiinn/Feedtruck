require 'rails_helper'

RSpec.describe "foodtruck/dashboards/show", type: :view do
  before(:each) do
    @foodtruck_dashboard = assign(:foodtruck_dashboard, Foodtruck::Dashboard.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
