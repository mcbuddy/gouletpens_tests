
require_relative 'base_page'

class HomePage < BasePage

  element :my_account_link, "li.header__account-nav-link--account"

  def expect_user_acc_created
    expect(has_my_account_link?).to be true
  end

end
