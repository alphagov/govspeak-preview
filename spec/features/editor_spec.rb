require "rails_helper"

RSpec.feature "Editor", type: :feature do
  scenario "Visual editor renders content" do
    visit "/editor"

    expect(page).to have_content("Visual editor")
    expect(page).to have_css(".visual-editor__container")
  end

  scenario "Visual editor renders markdown on demand" do
    use_javascript_driver

    visit "/editor"

    click_button "Show markdown"

    puts page.body
    expect(page).to have_css(".visual-editor__markdown-section")
  end
end
