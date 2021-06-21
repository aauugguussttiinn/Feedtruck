require "rails_helper"

RSpec.describe Foodtruck::ItemsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/foodtruck/items").to route_to("foodtruck/items#index")
    end

    it "routes to #new" do
      expect(get: "/foodtruck/items/new").to route_to("foodtruck/items#new")
    end

    it "routes to #show" do
      expect(get: "/foodtruck/items/1").to route_to("foodtruck/items#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/foodtruck/items/1/edit").to route_to("foodtruck/items#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/foodtruck/items").to route_to("foodtruck/items#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/foodtruck/items/1").to route_to("foodtruck/items#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/foodtruck/items/1").to route_to("foodtruck/items#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/foodtruck/items/1").to route_to("foodtruck/items#destroy", id: "1")
    end
  end
end
