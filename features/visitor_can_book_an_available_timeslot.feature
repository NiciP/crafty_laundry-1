Feature: Visitor can book an available timeslot

   As a user
   In order to make a booking
   I would like to be able to book an available timeslot

    Background: 
        Given the following Laundry room exists
        |   schedule    |   capacity   |
        |               |      1       |
        
        And the following user exists
        | email         | password |
        | gina@rita.com | 12345678 |
        And I am logged in as "gina@rita.com"

    Scenario: Visitor can make a succesfull booking
       Given I visit the "booking page"
       And I click on "11 Mar 08:00"
       Then I should see "You have a booking 11 Mar 08:00."

