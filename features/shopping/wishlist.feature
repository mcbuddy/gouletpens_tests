@javascript
Feature: Add Product to Wishlist
  User should be able to add product to wishlist

  @percy
  Scenario: Success Add q products to Wishlist
    Given user on the product page
    When user add a product to wishlist
    And user confirm to add product to wishlist
    And user go to another product page
    And user add a product to wishlist
    And user select default wishlist
    And user confirm to add product to wishlist
    And the wishlist have 2 the total item count
    And user take a snapshot of "wishlist"

  Scenario: Remove a product from Wishlist
    Given user have a product on wishlist
    When user remove the product from wishlist
    Then the wishlist have 0 the total item count
    And user should see "Looking for something?"

