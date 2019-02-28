Feature: Visitor can book an available timeslot

   As a user
   In order to make a booking
   I would like to be able to book an available timeslot

   Scenario: Visitor can make a succesfull booking
       Given I visit the "booking page"
       And I click on "09:00 - 12:00"
       Then I should see "Would you like to book this time?"
       And I click on "Yes"
       Then I should see "Successfully booked"


