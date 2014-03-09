require 'spec_helper'

feature '#sign_up' do
  scenario 'allows a user to register' do
    visit new_user_registration_path
      fill_in 'Name', :with => 'usernormal'
      fill_in 'Email', :with => 'usernormal@example.com'
      fill_in 'Password', :with => 'userpassword'
      fill_in 'Password confirmation', :with => 'userpassword'  
    click_button 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'
    expect(page).to have_content 'Home'
  end
end


feature '#sign_in' do
  scenario 'Signing in with correct credentials' do
    user = FactoryGirl.create(:user)
    sign_in(user)
  end

  scenario 'validate sign_in credentials' do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
      fill_in 'Email', :with => user.email
      fill_in 'Password', :with => 'invalidpass'
    click_button 'Log in'
    expect(page).to have_content 'Invalid email or password.'
end


feature '#admin_user' do
  scenario 'allows admin to see list of users' do
    admin_user = FactoryGirl.create(:user, :admin)
    sign_in(admin_user)
    expect(page).to have_content 'List of Users'
  end

  scenario 'allows admin to manage user roles' do
    admin_user = FactoryGirl.create(:user, :admin)
    sign_in(admin_user)
    visit users_path
    expect(page).to have_content 'Manage Roles'
  end
end

feature '#user' do
  scenario 'not allowed to see list of users' do
    user = FactoryGirl.create(:user)
    sign_in(user)
    expect(page).to have_content 'Home'
    expect(page).not_to have_content 'List of Users'
  end

  scenario 'not allowed to manage user roles' do
    user = FactoryGirl.create(:user)
    sign_in(user)
    visit users_path
    expect(page).to have_content 'Access denied.'
    expect(page).not_to have_content 'Manage Roles'
  end
end

feature '#logout' do
  scenario 'user should be logged out' do
    user = FactoryGirl.create(:user)
    sign_in(user)
    expect(page).to have_content 'Home'
    click_link 'Logout'
    expect(page).to have_content 'Signed out successfully.'
  end
end

end

