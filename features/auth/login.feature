@javascript
Feature: Login Page
  User should be able to login

  Background:
    Given user go to login page

  @wip
  Scenario: Success login with existing user
    When user login with existing user credential
    Then user should be logged in

  @wip
  Scenario: Fail login with non-existing user
    When user login with non-existing user credential
    Then user should be not logged in


  Scenario: Fail login with wrong formatted email
    When user login with credential:
      | email      | notanemail |
      | password   | passwprd   |
    Then user should see "Please enter a valid email address."

  @lighthouse
  Scenario: Performance Test - Login Page
    Then this page should pass minimum performance thresholds:
      | performance    | 60 |
      | accessibility  | 80 |
      | best_practices | 70 |
      | seo            | 80 |

  @percy
  Scenario: Percy Snapshot Test - Login Page
    Then user take a snapshot of "login"
