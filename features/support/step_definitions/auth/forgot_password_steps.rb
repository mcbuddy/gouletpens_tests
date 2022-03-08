When('user request reset password for {string}') do |email|
  reset_password_page.fill_email(email)
end

Then('the reset password sent to the email {string}') do |email|
  backend.get_reset_password_email(email)
end
