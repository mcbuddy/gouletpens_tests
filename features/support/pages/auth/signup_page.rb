# frozen_string_literal: true

require_relative '../base_page'

class SignUpPage < BasePage

  element :signup_title, 'div.text-center > h2'
  element :first_name_input, '#FirstName'
  element :last_name_input, '#LastName'
  element :email_input, '#Email'
  element :password_input, '#CreatePassword'

  def visit_signup_page
    visit(ENV['BASE_URI'] + '/account/register')
    expect(signup_title).to have_text("Create Account")
  end

  def do_signup(email)
    first_name_input.set('Budi')
    last_name_input.set('Test')
    email_input.set(email)
    password_input.set('Test1234')
    click_on 'sign up'
  end

end
