require 'rails_helper'

RSpec.describe "foodtruck/dashboards/new", type: :view do
  before(:each) do
    assign(:foodtruck_dashboard, Foodtruck::Dashboard.new())
  end

  it "renders new foodtruck_dashboard form" do
    render

    assert_select "form[action=?][method=?]", foodtruck_dashboards_path, "post" do
    end
  end
end
