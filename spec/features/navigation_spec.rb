require 'spec_helper'

feature 'navigation links' do
  scenario 'visitor sees limited set of navigation links' do
  	visit '/'
  	expect(page).to have_content 'Home'
    expect(page).to have_content 'Login'
    expect(page).to have_content 'Sign up'
    expect(page).not_to have_content 'Edit account'
  end

  scenario 'user sees all navigation links' do
  	user = FactoryGirl.create(:user)
    sign_in(user.email, user.password)
  	visit '/'
  	expect(page).to have_content 'Home'
    expect(page).to have_content 'Logout'
    expect(page).to have_content 'Edit account'
    expect(page).to have_content 'Users'
  end
end