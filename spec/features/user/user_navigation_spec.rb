require 'spec_helper'

feature 'user navigation' do
  scenario 'should see all links' do
  	user = FactoryGirl.create(:user)
    sign_in(user.email, user.password)
  	visit root_path
  	expect(page).to have_content 'Home'
    expect(page).to have_content 'Logout'
    expect(page).to have_content 'Edit account'
    expect(page).to have_content 'Users'
  end
end