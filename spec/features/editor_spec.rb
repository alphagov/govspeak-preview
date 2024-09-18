require "rails_helper"

RSpec.feature "Editor", type: :feature do
  scenario "Visual editor renders content" do
    visit "/editor"

    expect(page).to have_content("Visual editor")
    expect(page).to have_css(".visual-editor__container")
  end
end
