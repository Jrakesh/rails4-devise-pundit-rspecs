require 'spec_helper'

feature '#index' do
  scenario 'non-admin users should not see list of users' do
    user = FactoryGirl.create(:user)
    sign_in(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'  
    visit users_path 
    expect(page).to have_content 'Access denied.'
  end
end