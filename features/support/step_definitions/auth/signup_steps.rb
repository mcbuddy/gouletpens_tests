Given('user go to sign-up page') do
  signup_page.visit_signup_page
end

When('user fill up with valid credential') do
  signup_page.do_signup("budi#{@random_int}@endtest-mail.io")
end

When('user fill up with existing credential') do
  signup_page.do_signup('budi@endtest-mail.io')
end

Then('user acc should be created') do
  homepage.expect_user_acc_created
end

Then('email confirmation should be sent') do
  backend.get_email_confirmation("budi#{@random_int}@endtest-mail.io")
end
