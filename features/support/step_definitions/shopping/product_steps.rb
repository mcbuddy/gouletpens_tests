Given('user on the product page') do
  product_page.visit_product_page
end

When('user add a product to shopping cart') do
  product_page.add_product_to_cart
end

When('user add {int} product to shopping cart') do |num|
  product_page.select_quantity(num)
  product_page.add_product_to_cart
end

Then('product should be added to the shopping cart') do
  product_page.expect_product_added_to_cart
end

Then('the shopping cart have {int} the total item count') do |num|
  product_page.expect_item_count(num)
end

When('user go to the shopping cart') do
  product_page.click_view_cart
end

When('user go to another product page') do
  product_page.visit_another_product_page
end
