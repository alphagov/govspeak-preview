require "rails_helper"

RSpec.feature "Govspeak preview", type: :feature do
  scenario "Add Govspeak for one title" do
    visit "/"

    fill_in "govspeak_input", with: "## Ut viverra ante nunc, quis efficitur leo volutpat et"
    click_on "Preview"

    expect(page).to have_css(".gem-c-govspeak.govuk-govspeak h2", text: "Ut viverra ante nunc, quis efficitur leo volutpat et")
  end

  scenario "Add Govspeak for one title and one paragraph" do
    visit "/"

    fill_in "govspeak_input", with: "## Lorem ipsum dolor sit amet, consectetur adipiscing elit
      \n\nUt mattis augue sed nisl tincidunt, a laoreet lectus consequat. Mauris lacinia venenatis urna eu rhoncus."
    click_on "Preview"

    expect(page).to have_css(".gem-c-govspeak.govuk-govspeak h2", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit")
    expect(page).to have_css(".gem-c-govspeak.govuk-govspeak p", text: "Ut mattis augue sed nisl tincidunt, a laoreet lectus consequat. Mauris lacinia venenatis urna eu rhoncus.")
  end

  scenario "Add Govspeak for one paragraph and three list items" do
    visit "/"

    fill_in "govspeak_input", with: "Pellentesque ut facilisis eros, eget viverra nulla.
      \n\n- Sed porta et nisi et tempus
      \n- Nullam nec quam fringilla, imperdiet sem nec, feugiat urna. In hac habitasse platea dictumst
      \n- Mauris egestas, turpis a lobortis fringilla, orci neque pellentesque tellus, a rutrum sem lorem ac nibh."
    click_on "Preview"

    expect(page).to have_css(".gem-c-govspeak.govuk-govspeak p", text: "Pellentesque ut facilisis eros, eget viverra nulla.")
    expect(page).to have_css(".gem-c-govspeak.govuk-govspeak li", count: 3)
    expect(page).to have_css(".gem-c-govspeak.govuk-govspeak li:nth-child(1)", text: "Sed porta et nisi et tempus")
    expect(page).to have_css(".gem-c-govspeak.govuk-govspeak li:nth-child(2)", text: "Nullam nec quam fringilla, imperdiet sem nec, feugiat urna. In hac habitasse platea dictumst")
    expect(page).to have_css(".gem-c-govspeak.govuk-govspeak li:nth-child(3)", text: "Mauris egestas, turpis a lobortis fringilla, orci neque pellentesque tellus, a rutrum sem lorem ac nibh.")
  end

  scenario "Add Govspeak for one paragraph and one link" do
    visit "/"

    fill_in "govspeak_input", with: "[Nulla finibus finibus hendrerit](https://www.lipsum.com/feed/html). In hac habitasse platea dictumst. Nam volutpat quam sed tellus ullamcorper ultrices. Maecenas hendrerit dolor lacus, sed commodo lectus sodales sed."
    click_on "Preview"

    expect(page).to have_css(".gem-c-govspeak.govuk-govspeak p", text: "Nulla finibus finibus hendrerit. In hac habitasse platea dictumst. Nam volutpat quam sed tellus ullamcorper ultrices. Maecenas hendrerit dolor lacus, sed commodo lectus sodales sed.")
    expect(page).to have_link("Nulla finibus finibus hendrerit", href: "https://www.lipsum.com/feed/html")
  end

  scenario "Add Govspeak with translatable component label using Welsh as the locale" do
    visit "/"

    fill_in "govspeak_input", with: <<~GOVSPEAK
      Gellir ychwanegu troednodiadau[^1].

      [^1]: Ac yna wedi'i ddiffinio'n ddiweddarach.
    GOVSPEAK
    select "Welsh (Cymraeg)", from: "locale"
    click_on "Preview"

    expect(page).to have_css(
      ".gem-c-govspeak.govuk-govspeak a.footnote",
      text: "[troednodyn 1]",
    )
  end
end
