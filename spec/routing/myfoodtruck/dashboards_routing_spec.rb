require "rails_helper"

RSpec.describe Foodtruck::DashboardsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/foodtruck/dashboards").to route_to("foodtruck/dashboards#index")
    end

    it "routes to #new" do
      expect(get: "/foodtruck/dashboards/new").to route_to("foodtruck/dashboards#new")
    end

    it "routes to #show" do
      expect(get: "/foodtruck/dashboards/1").to route_to("foodtruck/dashboards#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/foodtruck/dashboards/1/edit").to route_to("foodtruck/dashboards#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/foodtruck/dashboards").to route_to("foodtruck/dashboards#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/foodtruck/dashboards/1").to route_to("foodtruck/dashboards#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/foodtruck/dashboards/1").to route_to("foodtruck/dashboards#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/foodtruck/dashboards/1").to route_to("foodtruck/dashboards#destroy", id: "1")
    end
  end
end
