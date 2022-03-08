@javascript
Feature: Remove Product from Cart
  User should be able to remove product to shopping cart


  Scenario: Success Add a product to Cart
    Given user has 1 products in the shopping cart
    And user go to the shopping cart
    When user should able to remove product
    And user should see "Your cart is currently empty."


  Scenario: Success Add products to Cart
    Given user has 5 products in the shopping cart
    And user go to the shopping cart
    When user should able to remove product
    And user should see "Your cart is currently empty."
