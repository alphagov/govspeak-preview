require "rails_helper"

RSpec.feature "Govspeak guide", type: :feature do
  scenario "Govspeak guide renders markdown" do
    visit "/guide"

    expect(page).to have_content("What is govspeak?")
    expect(page).to have_content("UK Parliament")

    expect(page).to have_css(".button.button-start")
  end
end
