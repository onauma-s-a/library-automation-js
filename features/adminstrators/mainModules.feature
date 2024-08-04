@lib-09
Feature: Main Modules of the Application

    As an admin, I want to access the main modules of the app.

    #* AC1: admin users should see 3 modules: Dashboard, Users, Books
    #* AC2: admin should be able to click on 3 modules: Dashboard, Users, Books and navigate to their page

  
    # TODO: Verify admins can see 3 main modules (Dashboard, Users, and Books)

    Background:
    Given admin has logged into account 

    Scenario Outline: Verify admins can see "Dashboard", "User" and "Books" modules on homepage
     When admin access to the homepage
     Then admin should see "Dashboard" module
     And admin shoud see "User" module
     And admin shoud see "Books" module


    # TODO: Verify admins can click on 3 main modules (Dashboard, Users, and Books) and navigate to their page 

    Scenario Outline: Verify admin can click on 3 modules : Dashboard, Users, Books
      When admin click on '<module-type>' module
      Then it should navigate to '<module-type>' page
      And admin should see '<module-type>' page 
      Examples:
        | module-type |
        | Dashboard   |
        | Users       |
        | Books       |


    #? Should there be more scenarios for this user story? Feel free to add more scenarios.