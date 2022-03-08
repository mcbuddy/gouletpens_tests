Given('user go to login page') do
  login_page.visit_login_page
end

When('user login with existing user credential') do
  login_page.do_login(ENV['EMAIL'], ENV['PASSWORD'])
end

Then('user should be logged in') do
  my_account_page.expect_logged_in
end

When('user login with non-existing user credential') do
  login_page.do_login('non-user@test.com', 'password')
end

Then('user should be not logged in') do
  login_page.expect_not_logged_in
end

When('user login with credential:') do |data|
  login_page.do_login(data.rows_hash[:email], data.rows_hash[:password])
end

Given('user click to forgot password link') do
  login_page.click_reset_password
end
