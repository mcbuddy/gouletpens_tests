# frozen_string_literal: true

require_relative '../base_page'

class WishlistPage < BasePage

  element :wishlist_title, "h1.wishlist-page__title"
  element :add_to_cart_btn, 'div.wishlist-item__add-to-cart > a'
  element :remove_icon, 'a.wishlist-item__remove'
  elements :wished_items, 'div.wishlist-item '

  def visit_wishlist_page
    visit(ENV['BASE_URI'] + '/pages/my-wishlist')
    expect(has_wishlist_title?).to be true
  end

  def click_add_to_cart_btn
    add_to_cart_btn.click
  end

  def remove_item_from_wishlist
    wished_items[0].hover
    expect(has_remove_icon?).to be true
    remove_icon.click
  end

  def expect_wished_item(count)
    expect(wished_items.count).to eql(count)
  end
end
