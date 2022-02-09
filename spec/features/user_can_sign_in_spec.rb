require 'rails_helper'

RSpec.feature "sign-in", type: :feature do
  scenario "User can sign into mugbook and see a welcome message" do
    visit "/sign_in/index"
    fill_in "username", with: "Pingu"
    fill_in "email", with: "pingu@igloo.com"
    fill_in "password", with: "meep moop"
    click_button "Submit"
    expect(page).to have_content("Pingu")
  end
end
