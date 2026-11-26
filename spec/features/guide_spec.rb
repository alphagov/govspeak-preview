require "rails_helper"

RSpec.feature "Govspeak guide", type: :feature do
  scenario "Govspeak guide page specifies a language for the <html> element" do
    visit "/guide"

    expect(page).to have_css("html[lang='en']")
  end

  scenario "Govspeak guide renders markdown" do
    visit "/guide"

    expect(page).to have_text("What is Govspeak?")
    expect(page).to have_text("UK Parliament")

    expect(page).to have_css(".govuk-button.govuk-button--start")
  end
end
