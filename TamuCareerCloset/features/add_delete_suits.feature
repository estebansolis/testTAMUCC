Feature: Add/Delete suit
  As a employee
  So that I can keep inventory up to date
  I want to add new suits and delete removed suits

Background: suits in database
  Given the following suits exist:
    #some table with suits Fj11
      
Scenario: Add a new suit
  Given I am on the manage page
  When  I fill out the "Apparel ID" with "FJ431"
  And   I fill out the "Sex" with "Female"
  And   I fill out the "Article" with "Jacket"
  And   I fill out the "Size" with "2"
  And   I press "Add Apparel"
  Then  I expect to see  "Successfully Added Apparel ID: FJ431"
  
Scenario: Delete a existing suit
  Given I am on the manage page
  When  I select #s
  And   I press "Delete Apparel"
  Then I expect to see "Successfully deleted Apparel ID: FJ11"