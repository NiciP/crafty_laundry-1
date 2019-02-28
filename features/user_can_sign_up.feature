Feature: User can sign up
  As a user
  In order to be able to use the service
  I would like to be able to sign up

  Background:
    Given I visit the "landing page"
    And I click on "Sign up"

  Scenario: User can sign up[happy path]
    And I fill in "Email" with "my@mail.com"
    And I fill in "Password" with "12345678"
    And I fill in "Password confirmation" with "12345678"
    And I click on "Sign up"
    Then I should see "Welcome! You have signed up successfully."

  Scenario: User can sign up[sad path]
    And I fill in "Email" with "my@mail.com"
    And I fill in "Password" with "12345"
    And I fill in "Password confirmation" with "12345"
    And I click on "Sign up"
    Then I should see "Password is too short (minimum is 6 characters)"