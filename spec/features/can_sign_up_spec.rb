require 'rails_helper'

RSpec.feature 'user sign up', type: :feature do
  scenario 'Can sign-up' do
    visit '/users/new'

    fill_in 'user[email]', with: 'test@email.com'
    fill_in 'user[username]', with: 'testusername'
    fill_in 'user[name]', with: 'firstname surname'
    fill_in 'user[password]', with: 'myfavmug123'
    click_button 'Sign up'
    expect(page).to have_current_path('/posts')
    expect(page).to have_content('Welcome to mugbook, testusername-mug!')
  end

  scenario 'receives error message if email is not unique' do 
    visit '/users/new'

    fill_in 'user[email]', with: 'test@email.com'
    fill_in 'user[username]', with: 'testusername'
    fill_in 'user[name]', with: 'firstname surname'
    fill_in 'user[password]', with: 'myfavmug123'
    click_button 'Sign up'

    visit '/users/new'

    fill_in 'user[email]', with: 'test@email.com'
    fill_in 'user[username]', with: 'testusername'
    fill_in 'user[name]', with: 'firstname surname'
    fill_in 'user[password]', with: 'myfavmug123'
    click_button 'Sign up'
    
    expect(page).to have_content('Email has already been taken')
    expect(page).to have_current_path('/users')
  end

  scenario 'received error message if pw doesnt meet requirements' do 
  end 
end
