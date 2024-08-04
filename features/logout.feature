@lib-02
Feature: Logout from the application

    As a user, I should be able to logout from the app.

    #* AC: user should log out from the homepage by clicking the “Log out”  button under the account name.


    # TODO: verify users can logout from the app

    Scenario Outline: User is successfully logged out from the homepage by clicking the "Log out" button
        Given user is logged in as '<user-type>'
        And user is already on the homepage
        When user click the "Log out" button under the account name
        Then user should be redirected to the login page
        Examples:
            | user-type |
            | admin     |
            | studen    |     

    
    #? Should there be more scenarios for this user story? Feel free to add more scenarios.