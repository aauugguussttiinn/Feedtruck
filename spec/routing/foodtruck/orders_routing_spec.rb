require "rails_helper"

RSpec.describe Foodtruck::OrdersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/foodtruck/orders").to route_to("foodtruck/orders#index")
    end

    it "routes to #new" do
      expect(get: "/foodtruck/orders/new").to route_to("foodtruck/orders#new")
    end

    it "routes to #show" do
      expect(get: "/foodtruck/orders/1").to route_to("foodtruck/orders#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/foodtruck/orders/1/edit").to route_to("foodtruck/orders#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/foodtruck/orders").to route_to("foodtruck/orders#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/foodtruck/orders/1").to route_to("foodtruck/orders#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/foodtruck/orders/1").to route_to("foodtruck/orders#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/foodtruck/orders/1").to route_to("foodtruck/orders#destroy", id: "1")
    end
  end
end
