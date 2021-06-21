require "rails_helper"

RSpec.describe Foodtruck::FoodtrucksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/foodtruck/foodtrucks").to route_to("foodtruck/foodtrucks#index")
    end

    it "routes to #new" do
      expect(get: "/foodtruck/foodtrucks/new").to route_to("foodtruck/foodtrucks#new")
    end

    it "routes to #show" do
      expect(get: "/foodtruck/foodtrucks/1").to route_to("foodtruck/foodtrucks#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/foodtruck/foodtrucks/1/edit").to route_to("foodtruck/foodtrucks#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/foodtruck/foodtrucks").to route_to("foodtruck/foodtrucks#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/foodtruck/foodtrucks/1").to route_to("foodtruck/foodtrucks#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/foodtruck/foodtrucks/1").to route_to("foodtruck/foodtrucks#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/foodtruck/foodtrucks/1").to route_to("foodtruck/foodtrucks#destroy", id: "1")
    end
  end
end
