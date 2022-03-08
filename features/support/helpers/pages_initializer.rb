# frozen_string_literal: true
module PagesInitializer

  def base_page
    @base_page ||= BasePage.new
  end

  def homepage
    @homepage ||= HomePage.new
  end

  def login_page
    @login_page ||= LoginPage.new
  end

  def my_account_page
    @my_account_page ||= MyAccountPage.new
  end

  def reset_password_page
    @reset_password_page ||= ResetPasswordPage.new
  end

  def signup_page
    @signup_page ||= SignUpPage.new
  end

  def product_page
    @product_page ||= ProductPage.new
  end

  def shopping_cart_page
    @shopping_cart_page ||= ShoppingCartPage.new
  end

  def wishlist_page
    @wishlist_page ||= WishlistPage.new
  end

  def backend
    @backend ||= Backend.new
  end

end
