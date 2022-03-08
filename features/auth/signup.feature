@javascript
Feature: SignUp Page
  User should be able to sign-up

  Background:
    Given user go to sign-up page

  @wip
  Scenario: Success sign-up
    When user fill up with valid credential
    Then user acc should be created
    And email confirmation should be sent

  @wip
  Scenario: Fail sign-up
    When user fill up with existing credential
    Then user should see "This email address is already associated with an account."
    And user should see "If this account is yours, you can reset your password"

  @lighthouse
  Scenario: Performance Test - SignUp Page
    Then this page should pass minimum performance thresholds:
      | performance    | 60 |
      | accessibility  | 90 |
      | best_practices | 75 |
      | seo            | 80 |

  @percy
  Scenario: Percy Snapshot Test - SignUp Page
    Then user take a snapshot of "signup"
