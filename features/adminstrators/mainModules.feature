@lib-09
Feature: Main Modules of the Application

    As an admin, I want to access the main modules of the app.

    #* AC1: admin users should see 3 modules: Dashboard, Users, Books
    #* AC2: admin should be able to click on 3 modules: Dashboard, Users, Books and navigate to their page

  
    Background:
    Given user is already on the login page

     # TODO: Verify admins can see 3 main modules (Dashboard, Users, and Books)

    @lib-09-01
    Scenario Outline: Verify admin see Dashboard, Users and Books modules on homepage
     Given user is already logged in as '<user-type>'
     When admin is already on homepage
     Then admin should see Dashboard module on tab bar
     And should see User module on tab bar
     And shoud see Books module on tab bar
     Examples:
        | user-type |
        | admin     | 

    # TODO: Verify admins can click on 3 main modules (Dashboard, Users, and Books) and navigate to their page 

    @lib-09-02
    Scenario Outline: Verify admin can click on the "Dashboard" and "Users" and "Books" module
     Given user is already logged in as '<user-type>'
     When admin click on '<module-type>' link
     Then admin should be in '<module-type>' page
     Examples:
      | user-type | module-type |
      | admin     | Dashboard   |
      | admin     | Users       |
      | admin     | Books       |


    #? Should there be more scenarios for this user story? Feel free to add more scenarios.