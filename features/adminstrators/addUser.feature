@lib-11
Feature: Add Users Functionality

    As an admin, I should be able to add users on the "Users" page.

    #! Acceptance Criteria are missing :(
    #* AC: Admin users should be able to see the Add User button on the Users page
    #* AC: Admin should be able to add student user and admin user to the application

    #! Please make sure to set the status of the newly added to "Inactive" after the automation is done

    # TODO: Verify that the Add User button is displayed on the Users page
    # TODO: Verify that the Add User button is enabled on the Users page
    # TODO: Verify that the user can add a new student user successfully
    # TODO: Verify that the user can add a new admin user successfully
    # TODO: Verify that the newly added user is displayed in the Users table

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
