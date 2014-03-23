require 'spec_helper'

feature '#show' do
  scenario 'user views own account' do
    user = FactoryGirl.create(:user)
    sign_in(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'
    click_link user.email
    expect(page).to have_content user.email
  end
end