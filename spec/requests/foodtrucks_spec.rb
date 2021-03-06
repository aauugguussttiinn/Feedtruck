 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/foodtrucks", type: :request do
  
  # Foodtruck. As you add validations to Foodtruck, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Foodtruck.create! valid_attributes
      get foodtrucks_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      foodtruck = Foodtruck.create! valid_attributes
      get foodtruck_url(foodtruck)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_foodtruck_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      foodtruck = Foodtruck.create! valid_attributes
      get edit_foodtruck_url(foodtruck)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Foodtruck" do
        expect {
          post foodtrucks_url, params: { foodtruck: valid_attributes }
        }.to change(Foodtruck, :count).by(1)
      end

      it "redirects to the created foodtruck" do
        post foodtrucks_url, params: { foodtruck: valid_attributes }
        expect(response).to redirect_to(foodtruck_url(Foodtruck.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Foodtruck" do
        expect {
          post foodtrucks_url, params: { foodtruck: invalid_attributes }
        }.to change(Foodtruck, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post foodtrucks_url, params: { foodtruck: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested foodtruck" do
        foodtruck = Foodtruck.create! valid_attributes
        patch foodtruck_url(foodtruck), params: { foodtruck: new_attributes }
        foodtruck.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the foodtruck" do
        foodtruck = Foodtruck.create! valid_attributes
        patch foodtruck_url(foodtruck), params: { foodtruck: new_attributes }
        foodtruck.reload
        expect(response).to redirect_to(foodtruck_url(foodtruck))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        foodtruck = Foodtruck.create! valid_attributes
        patch foodtruck_url(foodtruck), params: { foodtruck: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested foodtruck" do
      foodtruck = Foodtruck.create! valid_attributes
      expect {
        delete foodtruck_url(foodtruck)
      }.to change(Foodtruck, :count).by(-1)
    end

    it "redirects to the foodtrucks list" do
      foodtruck = Foodtruck.create! valid_attributes
      delete foodtruck_url(foodtruck)
      expect(response).to redirect_to(foodtrucks_url)
    end
  end
end
