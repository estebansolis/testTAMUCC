Feature: Search for suit specification/size
  As an employee
  So I can get the suit beforehand
  I want to pull up a customer and see their suit size and search available suits by size
  
Background: suits in database
   Given the following suits exist:
      #some table with suits Jacket 1, Jacket2, shoe1, shoe2
      
Scenario: search available suits by size
  Given I am on the availabe page
  When  I select "Apparel Type" to "Jacket"
  And   I select "Size" to  "2"
  And   I press search
  Then  I expect to be on the available page for "jacket" and "2"
  And   I expect to see "Jacket1" 
  And   I expect to see "Jacket2" 
  But   I expect not to see "shoe1"