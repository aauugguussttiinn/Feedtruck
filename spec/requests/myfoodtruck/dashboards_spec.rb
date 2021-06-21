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

RSpec.describe "/foodtruck/dashboards", type: :request do
  
  # Foodtruck::Dashboard. As you add validations to Foodtruck::Dashboard, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Foodtruck::Dashboard.create! valid_attributes
      get foodtruck_dashboards_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      dashboard = Foodtruck::Dashboard.create! valid_attributes
      get foodtruck_dashboard_url(foodtruck_dashboard)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_foodtruck_dashboard_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      dashboard = Foodtruck::Dashboard.create! valid_attributes
      get edit_foodtruck_dashboard_url(foodtruck_dashboard)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Foodtruck::Dashboard" do
        expect {
          post foodtruck_dashboards_url, params: { foodtruck_dashboard: valid_attributes }
        }.to change(Foodtruck::Dashboard, :count).by(1)
      end

      it "redirects to the created foodtruck_dashboard" do
        post foodtruck_dashboards_url, params: { foodtruck_dashboard: valid_attributes }
        expect(response).to redirect_to(foodtruck_dashboard_url(@foodtruck_dashboard))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Foodtruck::Dashboard" do
        expect {
          post foodtruck_dashboards_url, params: { foodtruck_dashboard: invalid_attributes }
        }.to change(Foodtruck::Dashboard, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post foodtruck_dashboards_url, params: { foodtruck_dashboard: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested foodtruck_dashboard" do
        dashboard = Foodtruck::Dashboard.create! valid_attributes
        patch foodtruck_dashboard_url(foodtruck_dashboard), params: { foodtruck_dashboard: new_attributes }
        dashboard.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the foodtruck_dashboard" do
        dashboard = Foodtruck::Dashboard.create! valid_attributes
        patch foodtruck_dashboard_url(foodtruck_dashboard), params: { foodtruck_dashboard: new_attributes }
        dashboard.reload
        expect(response).to redirect_to(foodtruck_dashboard_url(dashboard))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        dashboard = Foodtruck::Dashboard.create! valid_attributes
        patch foodtruck_dashboard_url(foodtruck_dashboard), params: { foodtruck_dashboard: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested foodtruck_dashboard" do
      dashboard = Foodtruck::Dashboard.create! valid_attributes
      expect {
        delete foodtruck_dashboard_url(foodtruck_dashboard)
      }.to change(Foodtruck::Dashboard, :count).by(-1)
    end

    it "redirects to the foodtruck_dashboards list" do
      dashboard = Foodtruck::Dashboard.create! valid_attributes
      delete foodtruck_dashboard_url(foodtruck_dashboard)
      expect(response).to redirect_to(foodtruck_dashboards_url)
    end
  end
end
