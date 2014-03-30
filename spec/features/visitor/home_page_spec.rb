require 'spec_helper'

feature 'visitor' do
  scenario 'should see home page' do
  	visit root_path
    expect(page).to have_content 'Home'
  end
end