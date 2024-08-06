@lib-07
Feature: User Groups Filtering

    As an admin, I should be able to filter the user groups on the "Users" page.


    #! Acceptance Criteria are missing :(
    #* AC1: Admins should be able to filter the user groups on the Users page
    #* AC2: There should be three options under the user groups dropdown menu: ALL, Librarian, and Students


    #TODO: Verify that the User Group dropdown is displayed on the Users page

    #TODO: Verify that the "ALL" option is selected by default on the Users page

    #TODO: Verify that the User Group dropdown menue has "ALL", "Librarian", and "Students" those three options

    #TODO: Verify that after the admin filters the user groups by student, then all group columns should have the value of "Students"

    Background:
    Given admin has logged into account
    And admin is already on "Users" page

    Scenario Outline: Verif admin should be able to select the User Group 
        When admin click on User Group field 
        And admin select on '<usergroup-type>' drop down list
        Then admin should see '<usergroup-type>' on the table
    Examples:
        | usergroup-type |
        | All            |
        | Librarian      | 
        | Student        | 