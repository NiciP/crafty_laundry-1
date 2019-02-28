Feature: User Can Login
    As a user
    In order to access my account and make bookings
    I would like to be able log in

    Background:
        Given I visit the "landing page"
        And the following user exists
        | email         | password |
        | gina@rita.com | 12345678 |

Scenario: User Can Login [Happy Path]
    When I click on "Login"    
    And I fill in "Email" with "gina@rita.com"
    And I fill in "Password" with "12345678"
    And I click on "Log in"
    Then I should see "Signed in successfully."

Scenario: User Can Login [Sad Path]
    When I click on "Login"    
    And I fill in "Email" with "gina@rita.com"
    And I fill in "Password" with "123456789"
    And I click on "Log in"
    Then I should see "Invalid Email or password."