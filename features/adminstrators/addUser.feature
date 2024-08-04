@lib-11
Feature: Add Users Functionality

    As an admin, I should be able to add users on the "Users" page.

    #! Acceptance Criteria are missing :(
    #* AC: admin users should be able to create new users on the "Users" page successfully


    #TODO: Analyze the user story and create acceptance criteria yourself!

    #TODO: Create scenarios that cover all the acceptance criteria

    Background:
    Given admin has logged into account
    And admin is already on "Users" page

    Scenario Outline: Verify admin can create new user successfully
     When admin click on "+Add User" button
     Then it should be navegate to "Add User" form
     When admin fill in '<fullname>' for Full Name field
     And admin fill in '<password>' for Password field
     And admin fill in '<email>' for Email field
     And admin select '<usergroup-type>' on User Group field
     And admin select '<status-type>' on Status field
     And admin select '<date>' on calendar field  
     And admin select '<end-date>' on calendar field 
     And admin fill in '<address>' on Address field
     And admin click the save changes button
     Then admin should see pop-up message "The user has been created"
     And it should display the new user information in the table  
     Examples:
         | fullname    | password | email              | usergroup-type  | status-type  | date          | end-date    | address      |
         | Tester One  | 1234     | testerone@library  | Students        | Active       | current date  | 2024-12-31  | Seattle, WA  |
