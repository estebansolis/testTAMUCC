Feature: Add/Delete student
  As a employee
  So that I can keep students up to date
  I want to add new students and delete old students

Background: students in database
  Given the following students exist:
    #some table with students 3, 4, 5, 6
      
Scenario: Add a new student
  Given I am on the manage page
  When  I fill out the "UIN" with "123456789"
  And   I fill out the "First Name" with "John"
  And   I fill out the "Last Name" with "Smith"
  And   I fill out the "Email Address" with "person@tamu.edu"
  And   I fill out the "Phone Number" with "0987654321"
  And   I press "Add Student"
  Then  I expect to see  "Successfully Added Student ID: 123456789"
  
Scenario: Delete a existing student
  Given I am on the manage page
  When  I select #s
  And   I press "Delete Student"
  Then I expect to see "Successfully Deleted Student ID: 123456789"