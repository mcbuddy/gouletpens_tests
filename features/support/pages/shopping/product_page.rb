# frozen_string_literal: true

require_relative '../base_page'

class ProductPage < BasePage

  element :product_title, 'h1.product-info__title'
  element :add_to_cart_btn, 'button#AddToCart'
  element :add_to_wishlist_btn, 'button[aria-label="ADD TO WISHLIST"]'
  element :select_quantity_dropdown, 'div.quantity__container > select#Quantity'
  element :sidecart_modal, 'section#sidecart'
  element :success_msg, 'span.add-to-bag'
  element :item_count, 'span[data-cart-render="item_count"]', match: :first
  element :wishlist_modal, 'div.swym-add-wishlist-modal'
  element :default_wishlist_checkbox, :xpath, '//*[@id="swym-component-container"]/div[2]/div/div/div[2]/div/div[2]/button/span[3]'

  def visit_product_page
    visit ENV['BASE_URI'] + '/collections/favorite-starter-pens/products/jinhao-x750-fountain-pen-frosted-black?variant=11884804702251'
    expect(product_title).to have_text("Jinhao X750 Fountain Pen - Frosted Black")
  end

  def visit_another_product_page
    visit ENV['BASE_URI'] + '/products/twsbi-swipe-fountain-pen-salmon'
    expect(product_title).to have_text('TWSBI SWIPE Fountain Pen - Salmon')
  end

  def select_quantity(num)
    select num.to_s, from: 'quantity'
  end

  def add_product_to_cart
    expect(has_add_to_cart_btn?).to be true
    add_to_cart_btn.click
  end

  def add_product_to_wishlist
    expect(has_add_to_wishlist_btn?).to be true
    add_to_wishlist_btn.click
    expect(has_wishlist_modal?).to be true
  end

  def add_to_list
    click_on 'Add To List'
  end

  def select_default_wishlist
    default_wishlist_checkbox.click
  end

  def click_view_cart
    visit ENV['BASE_URI'] + '/cart'
  end

  def expect_product_added_to_cart
    expect(has_sidecart_modal?).to be true
    expect(success_msg).to have_text('Added to your cart')
  end

  def expect_item_count(num)
    expect(item_count.text).to eql(num.to_s)
  end

end





