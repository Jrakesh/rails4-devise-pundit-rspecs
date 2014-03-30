require 'spec_helper'

feature 'sign up', :js=>true do
  scenario 'should register successfully' do
  	user_sign_up('newuser@example.com', 'newuser123', 'newuser123')
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end

  scenario 'should return error with invalid email', :js=>true do
    user_sign_up('otheruser', 'otheruser', 'otheruser')
    expect(page).not_to have_content 'Please enter an email address.'
  end

  scenario 'should return error with invalid password', :js=>true do
    user_sign_up('new@example.com', '', '')
    find("li", :text => "Password can't be blank")
  end

  scenario 'should return error with invalid password confirmation', :js=>true do
    user_sign_up('new@example.com', 'other12345', '')
    find("li", :text => "Password confirmation doesn't match Password")
  end
  
  scenario 'should return error with mismatched password and password confirmation', :js=>true do
    user_sign_up('new@example.com', 'other12345', 'mismatchpass')
    find("li", :text => "Password confirmation doesn't match Password")
  end
end