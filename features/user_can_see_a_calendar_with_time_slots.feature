Feature: User can see a calendar with time slots

    As a user
    In order to book available timeslots
    I need to be able to see available timeslots
    
    Background:
        Given the following Laundry room exists
            |   schedule    |   capacity   |
            |               |      1       |       
        And the following user exists
            | email           | password |
            | gina@rita.com   | 12345678 |
            | someone@rita.com| 12345678 |   
        And I am logged in as "gina@rita.com"
        And I visit the "landing page"

    Scenario: User can see a calendar with time slots
        When I click on "Calendar"
        Then I should see the booking calendar