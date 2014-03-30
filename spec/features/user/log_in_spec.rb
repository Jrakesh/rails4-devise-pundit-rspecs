require 'spec_helper'

feature 'log in' do
  scenario 'when not signed up' do
    sign_in('newuser@email.com', 'newuserpass')
    expect(page).to have_content 'Invalid email or password.'
  end

  scenario 'with correct credentials' do
    user = FactoryGirl.create(:user)
    sign_in(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'
  end

  scenario 'should return error with invalid email' do
    user = FactoryGirl.create(:user)
    sign_in('invalid@email.com', user.password)
    expect(page).to have_content 'Invalid email or password.'
  end

  scenario 'should return error with invalid password' do
    user = FactoryGirl.create(:user)
    sign_in(user.email, 'invalidpass')
    expect(page).to have_content 'Invalid email or password.'
  end
end