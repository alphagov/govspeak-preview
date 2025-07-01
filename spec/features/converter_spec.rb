require "rails_helper"

RSpec.feature "Converting to Govspeak", type: :feature do
  scenario "User converts a Google Doc to Govspeak" do
    visit "/"

    click_on "Convert Google Docs to Govspeak"

    attach_file "upload[file]", "./spec/support/fixtures/Sample Assessment Report.zip"

    click_on "Convert"

    expect(page).to have_content("GOV.UK Notify")
  end

  scenario "User attempts to convert a Google Doc with images" do
    visit "/"

    click_on "Convert Google Docs to Govspeak"

    attach_file "upload[file]", "./spec/support/fixtures/Google Doc with images.zip"

    click_on "Convert"

    expect(page).to have_content("Could not convert Google Doc. Check the instructions and try again.")
  end
end
