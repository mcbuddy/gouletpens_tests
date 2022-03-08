# frozen_string_literal: true

require_relative '../base_page'

class ResetPasswordPage < BasePage

  element :reset_password_input, '#RecoverEmail'

  def fill_email(email)
    reset_password_input.set email
    click_on "submit"
  end

end
