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
      expect(response).to have_http_status(:unprocessable_content)
    end

    it "uploads when given a file" do
      post "/convert", params: {
        upload: {
          file: fixture_file_upload("spec/support/fixtures/Sample Assessment Report.zip", "application/zip"),
        },
      }

      expect(response).to have_http_status(:ok)
      expect(response.body).not_to include("Choose a file to convert")
    end

    it "errors when not given a file" do
      post "/convert", params: {
        upload: {
          file: "not-a-file",
        },
      }

      expect(response).to have_http_status(:unprocessable_content)
      expect(response.body).to include("Choose a file to convert")
    end

    it "rejects non-HTML requests" do
      post "/convert", headers: {
        "Accept" => "application/json",
      }
      expect(response).to have_http_status(:not_acceptable)
    end

    context "when GoogleDocsToGovspeak#to_govspeak returns nil" do
      let(:google_docs_to_govspeak_instance) { instance_double(GoogleDocsToGovspeak) }

      before do
        allow(GoogleDocsToGovspeak).to receive(:new).and_return(google_docs_to_govspeak_instance)
        allow(google_docs_to_govspeak_instance).to receive(:to_govspeak).and_return(nil)
      end

      it "returns an error message" do
        post "/convert", params: {
          upload: {
            file: fixture_file_upload("spec/support/fixtures/Sample Assessment Report.zip", "application/zip"),
          },
        }

        expect(response.body).to include("Could not convert Google Doc. Check the instructions and try again.")
      end
    end
  end
end
