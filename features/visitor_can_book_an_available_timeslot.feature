Feature: Visitor can book an available timeslot

   As a user
   In order to make a booking
   I would like to be able to book an available timeslot

    Background: 
        Given the following Laundry room exists
        |   schedule    |   capacity   |
        |               |      1       |

    Scenario: Visitor can make a succesfull booking
       Given I visit the "booking page"
       And I click on "01 Mar 08:00"
       Then I should see "Would you like to book this time?"
       And I click on "Yes"
       Then I should see "Successfully booked"

