require "rails_helper"

RSpec.feature "Govspeak guide", type: :feature do
  scenario "Govspeak guide page specifies a language for the <html> element" do
    visit "/guide"

    expect(page).to have_selector("html[lang='en']")
  end

  scenario "Govspeak guide renders markdown" do
    visit "/guide"

    expect(page).to have_content("What is Govspeak?")
    expect(page).to have_content("UK Parliament")

    expect(page).to have_css(".govuk-button.govuk-button--start")
  end
end
