require 'spec_helper'

feature 'log out' do
  scenario 'as a user' do
    user = FactoryGirl.create(:user)
    sign_in(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'
    click_link 'Logout'
    expect(page).to have_content 'Signed out successfully.'
  end
end