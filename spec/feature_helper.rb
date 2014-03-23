# sign in process
  def sign_in(email, pass)
    visit new_user_session_path
      fill_in 'Email', :with => email
      fill_in 'Password', :with => pass
    click_button 'Log in'
  end

# sign up process
  def user_sign_up(email, pass, confirmpass)
    visit new_user_registration_path
      fill_in 'Email', :with => email
      fill_in 'Password', :with => pass
      fill_in 'Password confirmation', :with => confirmpass
    click_button 'Sign up'
  end


