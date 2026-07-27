require "rails_helper"

RSpec.describe "ConvertController", type: :request do
  describe "GET /convert" do
    it "accepts HTML requests" do
      get "/convert"
      expect(response).to have_http_status(:ok)
    end

    it "rejects non-HTML requests" do
      get "/convert", headers: {
        "Accept" => "application/json",
      }
      expect(response).to have_http_status(:not_acceptable)
    end
  end

  describe "POST /convert" do
    it "accepts HTML requests" do
      post "/convert"
      expect(response).to have_http_status(:ok)
    end

    it "rejects non-HTML requests" do
      post "/convert", headers: {
        "Accept" => "application/json",
      }
      expect(response).to have_http_status(:not_acceptable)
    end
  end
end
