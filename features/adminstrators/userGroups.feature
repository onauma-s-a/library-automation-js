@lib-07
Feature: User Groups Filtering

    As an admin, I should be able to filter the user groups on the "Users" page.


    #! Acceptance Criteria are missing :(
    #* AC: admin users should be able to filter the user group on "Users" page by selecting the user group drop down list

    #TODO: Analyze the user story and create acceptance criteria yourself!

    #TODO: Create scenarios that cover all the acceptance criteria

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