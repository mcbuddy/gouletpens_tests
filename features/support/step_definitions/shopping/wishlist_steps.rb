
When('user add a product to wishlist') do
  product_page.add_product_to_wishlist
end

When('user confirm to add product to wishlist') do
  product_page.add_to_list
end

Then('the wishlist have {int} the total item count') do |num|
  wishlist_page.visit_wishlist_page
  wishlist_page.expect_wished_item(num)
end

Given('user have a product on wishlist') do
  product_page.visit_product_page
  product_page.add_product_to_wishlist
  product_page.add_to_list
  wishlist_page.visit_wishlist_page
end

When ('user remove the product from wishlist') do
  wishlist_page.remove_item_from_wishlist
end

When('user select default wishlist') do
  product_page.select_default_wishlist
end
