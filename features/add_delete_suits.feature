Feature: Add/Delete suit
  As a employee
  So that I can keep inventory up to date
  I want to add new suits and delete removed suits

Background: suits in database
  Given the following suits exist:
  | Apparel ID  | Sex     | Article   | Size  | Status |
  | FJ431       | Female  | Jacket    | 32    | In     |
      
Scenario: Add a new suit
  Given I am on the home page
  When  I press "Available"
  Then I am on the available page
  When  I press "New Apparel"
  When  I fill out the "Apparel ID" with "FJ431"
  And   I fill out the "Sex" with "Female"
  And   I fill out the "Article" with "Jacket"
  And   I fill out the "Size" with "2"
  And   I press "Add Apparel"
  Then  I expect to see "Apparel was successfully created."
  And   I press "Back"
  Then  I am on the available page
  And   I see the Apparel ID FJ431
  
Scenario: Delete a existing suit
  Given I am on the home page
  When  I press "Available"
  Then I am on the available page
  When  I press Destroy
  And   I press "OK"
  Then I expect to see "Apparel was successfully destroyed."