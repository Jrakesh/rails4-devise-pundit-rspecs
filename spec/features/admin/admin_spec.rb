require 'spec_helper'

feature 'admin user' do
  scenario 'should see list of users' do
    admin_user = FactoryGirl.create(:user, :admin)
    sign_in(admin_user.email, admin_user.password)
    expect(page).to have_content 'List of Users'
  end

  scenario 'should manage user roles' do
    admin_user = FactoryGirl.create(:user, :admin)
    sign_in(admin_user.email, admin_user.password)
    visit users_path
    expect(page).to have_content 'Manage Roles'
  end
end

feature 'visitor' do
  scenario 'should not see list of users' do
    user = FactoryGirl.create(:user)
    sign_in(user.email, user.password)
    expect(page).to have_content 'Home'
    expect(page).not_to have_content 'List of Users'
  end

  scenario 'should not manage user roles' do
    user = FactoryGirl.create(:user)
    sign_in(user.email, user.password)
    visit users_path
    expect(page).to have_content 'Access denied.'
    expect(page).not_to have_content 'Manage Roles'
  end
end

