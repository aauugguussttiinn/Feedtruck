require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /homepage" do
    it "returns http success" do
      get "/static_pages/homepage"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /contact" do
    it "returns http success" do
      get "/static_pages/contact"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /team" do
    it "returns http success" do
      get "/static_pages/team"
      expect(response).to have_http_status(:success)
    end
  end

end
