require "rails_helper"

RSpec.describe "GuideController", type: :request do
  describe "GET /guide" do
    it "accepts HTML requests" do
      get "/guide"
      expect(response).to have_http_status(:ok)
    end

    it "rejects non-HTML requests" do
      get "/guide", headers: {
        "Accept" => "application/json",
      }
      expect(response).to have_http_status(:not_acceptable)
    end
  end
end
