@javascript
Feature: Forgot Password Feature
  User should be able to request to reset password

  Background:
    Given user go to login page
    And user click to forgot password link

  @wip
  Scenario: Able to request reset password
    When user request reset password for "budi@endtest-mail.io"
    Then user should see "We've sent you an email with a link to update your password."
    And the reset password sent to the email "budi@endtest-mail.io"

  @wip
  Scenario: Fail to request reset password
    When user request reset password for "not-exist@mail.com"
    Then user should see "No account found with that email."

  @percy
  Scenario: Percy Snapshot Test - Forgot Password Page
    Then user take a snapshot of "forgot-password"
