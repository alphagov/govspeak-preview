require "rails_helper"

RSpec.feature "Govspeak guide", type: :feature do
  scenario "Govspeak guide renders markdown" do
    visit "/guide"

    expect(page).to have_content("What is govspeak?")
    expect(page).to have_content("UK Parliament")

    # Check markdown has rendered button
    expect(page).to have_content("<p><a role=\\\"button\\\" class=\\\"button button-start\\\" href=\\\"https://example.com/external-service/start-now\\\" data-module=\\\"cross-domain-tracking\\\" data-tracking-code=\\\"UA-XXXXXX-Y\\\" data-tracking-name=\\\"govspeakButtonTracker\\\">Start Now</a></p")
  end
end
