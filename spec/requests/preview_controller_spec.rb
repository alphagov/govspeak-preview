require "rails_helper"

RSpec.describe "PreviewController", type: :request do
  describe "GET /preview/new" do
    it "accepts HTML requests" do
      get "/preview/new"
      expect(response).to have_http_status(:ok)
    end

    it "rejects non-HTML requests" do
      get "/preview/new", headers: {
        "Accept" => "application/json",
      }
      expect(response).to have_http_status(:not_acceptable)
    end
  end

  describe "POST /preview" do
    it "accepts HTML requests" do
      post "/preview"
      expect(response).to have_http_status(:ok)
    end

    it "rejects non-HTML requests" do
      post "/preview", headers: {
        "Accept" => "application/json",
      }
      expect(response).to have_http_status(:not_acceptable)
    end
  end
end
