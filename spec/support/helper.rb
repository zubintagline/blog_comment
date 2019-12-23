module Helpers
  def login_user(email, password)
    visit "/"

    fill_in "user_email", with: user.email
    fill_in "user_password", with: user.password

    click_button "Log In"
  end
end