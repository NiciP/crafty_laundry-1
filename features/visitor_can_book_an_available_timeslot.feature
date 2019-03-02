Feature: Visitor can book an available timeslot

    As a user
    In order to wash my laundry
    I would like to be able to book an available timeslot

    Background: 
      Given the following Laundry room exists
        |   schedule    |   capacity   |
        |               |      1       |       
      And the following user exists
        | email           | password |
        | gina@rita.com   | 12345678 |
        | someone@rita.com| 12345678 |   

    Scenario: Visitor can make a succesfull booking
      When I am logged in as "gina@rita.com"
      And I visit the "booking page"
      And I click on "08:00" on "Tomorrow"
      Then I should see "You have succesfully booked a time."

    Scenario: Visitor tries to book a timeslot but are not signed in
      When I visit the "booking page"
      And I click on "08:00" on "Tomorrow"
      Then I should see "You need to sign in or sign up before continuing."
    
    Scenario: Vistor tries to book an unavailable timeslot
      When I am logged in as "gina@rita.com"
      And I visit the "booking page"
      And I click on "08:00" on "Tomorrow"
      Then I should see "You have succesfully booked a time."
      And I logout
      And I am logged in as "someone@rita.com" 
      And I visit the "booking page"
      And I click on "08:00" on "Tomorrow"
      Then I should see "The laundry room is fully booked"