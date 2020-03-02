require "rails_helper"

RSpec.describe GoogleDocsToGovspeak do
  describe "#to_govspeak" do
    it "converts to govspeak" do
      report = File.open("spec/support/fixtures/Sample Assessment Report.zip")

      govspeak = GoogleDocsToGovspeak.new(report).to_govspeak

      expect(govspeak).to eql(File.read("spec/services/expected-markdown-sample-assessment.md"))
    end
  end
end
