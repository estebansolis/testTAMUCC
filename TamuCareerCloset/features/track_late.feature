Feature: Track Checkin and Checkout
  As a boss/leader
  So I can see who has checked out a suit or is late to return a suit
  I want to not lose a suit in the system
  
  Background: suits in database
    Given the following suits exist:
      #some table with suits 23, 25, 26 checkout and 24 not. With 25 passed due
      
Scenario: Check what suit is checked out
   Given I am on the home page
   When  I follow the "Checked Out" link
   Then  I expect to be on the Checked out page
   And   I expect to see suit "23" on the list of checked out suits
   But   I expect not to see suit "24" checked out
   
Scenario: Check what suit is late
   Given I am on the home page
   When  I follow the "Late" link
   Then  I expect to be on the Late page
   And   I expect to see suit "25" on the list of late suits
   But   I expect not to see suit "24", "23" , and "26" checked out
   
Scenario: Return to home page
   Given I am on the Late or Checked out page 
   When  I follow the "Home" link
   Then  I expect to be on the Home page
