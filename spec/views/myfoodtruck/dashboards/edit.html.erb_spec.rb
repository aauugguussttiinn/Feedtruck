require 'rails_helper'

RSpec.describe "foodtruck/dashboards/edit", type: :view do
  before(:each) do
    @foodtruck_dashboard = assign(:foodtruck_dashboard, Foodtruck::Dashboard.create!())
  end

  it "renders the edit foodtruck_dashboard form" do
    render

    assert_select "form[action=?][method=?]", foodtruck_dashboard_path(@foodtruck_dashboard), "post" do
    end
  end
end
