Then('user should see ${float} as the total price') do |price|
  shopping_cart_page.expect_total_price(price)
end

Then('user should able to remove product') do
  shopping_cart_page.remove_item
end

Given('user has {int} products in the shopping cart') do |num|
  product_page.visit_product_page
  product_page.select_quantity(num)
  product_page.add_product_to_cart
  product_page.expect_product_added_to_cart
  product_page.expect_item_count(num)
end
