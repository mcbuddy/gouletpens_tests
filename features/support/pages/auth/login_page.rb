# frozen_string_literal: true

require_relative '../base_page'

class LoginPage < BasePage

  element :login_title, 'div.text-center > h2'
  element :email_input, '#CustomerEmail'
  element :password_input, '#CustomerPassword'
  element :forgot_password_link, '#RecoverPassword'
  element :error_msg, "div.errors"

  def visit_login_page
    visit(ENV['BASE_URI'] + '/account/login')
    expect(has_login_title?).to be true
    expect(login_title).to have_text("Login")
  end

  def do_login(email, password)
    email_input.set email
    password_input.set password
    click_on "sign in"
  end

  def click_reset_password
    expect(has_forgot_password_link?).to be true
    forgot_password_link.click
  end

  def expect_not_logged_in
    expect(error_msg).to have_text('Incorrect email or password.')
  end
end
