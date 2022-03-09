@javascript
Feature: Add Product to Cart
  User should be able to add product to shopping cart

  Background:
    Given user on the product page


  Scenario: Success Add a product to Cart
    When user add a product to shopping cart
    Then product should be added to the shopping cart
    And the shopping cart have 1 the total item count

    When user go to the shopping cart
    Then user should see $4.95 as the total price


  Scenario: Success Add products to Cart
    When user add 5 product to shopping cart
    Then product should be added to the shopping cart
    And the shopping cart have 5 the total item count

    When user go to the shopping cart
    Then user should see $24.75 as the total price

  @lighthouse
  Scenario: Performance Test - Product Page
    Then this page should pass minimum performance thresholds:
      | performance    | 40 |
      | accessibility  | 70 |
      | best_practices | 70 |
      | seo            | 80 |

  @percy
  Scenario: Percy Snapshot Test - Product Page
    Then user take a snapshot of "product"
