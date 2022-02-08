require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can sign-up" do
    visit "/users/new"

    fill_in "email", with: "testusername"
    fill_in "username", with: "testusername"
    fill_in "password", with: "myfavmug123"
    click_button "Sign up"
    expect(page).to have_content("Welcome to mugbook, testusername-mug!")
    expect(page).to have_current_path('/posts/index')
  end

  scenario 'receives error message if username is not unique' do 
    expect(page).to have_current_path('users/new')
  end

  scenario 'received error message if pw doesnt meet requirements' do 
  end 

end