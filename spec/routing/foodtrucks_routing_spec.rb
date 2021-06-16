require "rails_helper"

RSpec.describe FoodtrucksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/foodtrucks").to route_to("foodtrucks#index")
    end

    it "routes to #new" do
      expect(get: "/foodtrucks/new").to route_to("foodtrucks#new")
    end

    it "routes to #show" do
      expect(get: "/foodtrucks/1").to route_to("foodtrucks#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/foodtrucks/1/edit").to route_to("foodtrucks#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/foodtrucks").to route_to("foodtrucks#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/foodtrucks/1").to route_to("foodtrucks#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/foodtrucks/1").to route_to("foodtrucks#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/foodtrucks/1").to route_to("foodtrucks#destroy", id: "1")
    end
  end
end
