# frozen_string_literal: true

require_relative '../base_page'

class ShoppingCartPage < BasePage

  element :shopping_cart_title, 'h1.cart-header__title'
  element :total_price, 'div.cart-products__total-item'

  def remove_item
    expect(has_shopping_cart_title?).to be true
    expect(page).to have_text('Order Summary')
    expect(page).to have_button('Check Out')
    sleep(3)
    click_on 'Remove'
  end

  def expect_total_price(num)
    expect(has_shopping_cart_title?).to be true
    expect(total_price.text).to eql("$#{num}")
  end

end
