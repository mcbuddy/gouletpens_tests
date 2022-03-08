# frozen_string_literal: true

require_relative '../base_page'

class MyAccountPage < BasePage

  element :page_title, 'h1.page-title'

  def expect_logged_in
    expect(page_title).to have_text('My Account')
    expect(page).to have_text('Sign Out')
  end

end
