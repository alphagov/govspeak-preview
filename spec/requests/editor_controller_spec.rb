require "rails_helper"

RSpec.describe "EditorController", type: :request do
  describe "GET /editor" do
    it "accepts HTML requests" do
      get "/editor"
      expect(response).to have_http_status(:ok)
    end

    it "rejects non-HTML requests" do
      get "/editor", headers: {
        "Accept" => "application/json",
      }
      expect(response).to have_http_status(:not_acceptable)
    end
  end
end
