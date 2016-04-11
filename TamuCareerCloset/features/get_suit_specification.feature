Feature: Search for suit specification/size
  As an employee
  So I can get the suit beforehand
  I want to pull up a customer and see their suit size and search available suits by size
  
Background: suits in database
   Given the following suits exist:

    | Apparel_ID  | Sex |   Article    | Size  | Status |
    |   MJ1       |  M  |   Jacket     |  48L  |  in    |
    |   MJ2       |  M  |   Jacket     |  48L  |  in    |
    |   FJ2       |  F  |   Skirt      |  24W  |  in    |
    |   MJ3       |  M  |   Jacket     |  47L  |  in    |
    |   FJ4       |  F  |   Skirt      |  14W  |  in    |
    |   MJ5       |  M  |   Pants      |  33   |  in    |
    |   FJ6       |  F  |   Skirt      |  14W  |  out   |
    |   MJ7       |  M  |   Jacket     |  48L  |  out   |     

Scenario: search available suits by size
  Given I am on the availabe page
  When  I select "Sex" to "Male"
  And   I select "Article Type" to "Jacket"
  And   I select "Size" to  "48L"
  And   I press search
  Then  I expect to be on the available page for "jacket", "M", and "48L"
  And   I expect to see "MJ1" 
  And   I expect to see "MJ2" 
  But   I expect not to see "MJ7"
  
Scenario: search available suits by sex
  Given I am on the availabe page
  When  I select "Sex" to "Female"
  And   I press search
  Then  I expect to be on the available page for "F"
  And   I expect to see "FJ2" 
  And   I expect to see "FJ4" 
  But   I expect not to see "MJ1"
  But   I expect not to see "FJ6"
  
Scenario: search available suits by article
  Given I am on the availabe page
  When  I select "Sex" to "Male"
  And   I select "Article Type" to "Jacket"
  And   I select "Size" to  "48L"
  And   I press search
  Then  I expect to be on the available page for "jacket" and "M"
  And   I expect to see "MJ2" 
  And   I expect to see "MJ1" 
  But   I expect not to see "MJ5"