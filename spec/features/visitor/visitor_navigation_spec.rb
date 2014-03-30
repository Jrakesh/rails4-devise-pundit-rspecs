require 'spec_helper'

feature 'visitor navigation' do
  scenario 'should see limited set of links' do
  	visit root_path
  	expect(page).to have_content 'Home'
    expect(page).to have_content 'Login'
    expect(page).to have_content 'Sign up'
    expect(page).not_to have_content 'Edit account'
  end
end