require "rails_helper"

RSpec.feature "Govspeak guide", type: :feature do
  scenario "Govspeak guide renders markdown" do
    visit "/guide"

    expect(page).to have_content("What is govspeak?")

    # Check markdown is turned into a link
    expect(page).to have_css("a[href="http://www.parliament.uk"]")
    expect(page).to have_content("UK Parliament")
  end
end
