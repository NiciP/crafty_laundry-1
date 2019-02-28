Feature: User can sign up
  As a user
  In order to be able to use the service
  I would like to be able to sign up

  Background:
      | name   | email       | password | password confirmation |
      | olivia | my@mail.com | password | password              |

    Given I visit the "landing page"
    And I click on "Sign up"

  Scenario: User can sign up
    When I fill in "Name" with "olivia"
    And I fill in "Email" with "my@mail.com"
    And I fill in "Password" with "12345678"
    And I fill in "Password confirmation" with "12345678"
    And I click on "Sign up"
  