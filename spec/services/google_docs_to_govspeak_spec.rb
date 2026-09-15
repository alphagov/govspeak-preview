require "rails_helper"

RSpec.describe GoogleDocsToGovspeak do
  describe "#to_govspeak" do
    it "converts to govspeak" do
      report = File.open("spec/support/fixtures/Sample Assessment Report.zip")

      govspeak = described_class.new(report).to_govspeak

      expect(govspeak).to eql(File.read("spec/services/expected-markdown-sample-assessment.md"))
    end

    context "when the file is not a ZIP" do
      it "returns nil" do
        report = File.open("spec/support/fixtures/not-a-zip.txt")

        govspeak = described_class.new(report).to_govspeak

        expect(govspeak).to be_nil
      end
    end
  end
end
