@lib-05
Feature: Main modules of the application

    As a student, I want to access to the main modules of the app.

    #* AC1: students should see 2 modules: Books, Borrowing Books
    #* AC2: students should be able to click on 2 modules: Books, Borrowing Books and navigate to their page


    Background:
    Given user is already on the login page

    # TODO: Verify students can see 2 main modules (Books and Borrowing Books)

    @lib-05-01
    Scenario Outline: Verify user see Books and Borrowing Books modules on homepage
     Given user is already logged in as '<user-type>'
     When user is already on homepage
     Then user should see Books module on tab bar
     And shoud see Borrowing Books module on tab bar
     Examples:
        | user-type |
        | student   | 

     
    # TODO: Verify students can click on 2 modules: Books, Borrowing Books and navigate to their page 

    @lib-05-02
    Scenario Outline: Verify user can click on the "Books" and "Borrowing Books" module
      Given user is already logged in as '<user-type>'
      And user is already on homepage
      When user click on '<module-type>' link
      Then user should be in '<module-type>' page 
      Examples:
        | user-type   | module-type     |
        | student     | Books           |
        | student     | Borrowing Books | 

    #? Should there be more scenarios for this user story? feel free to add more scenarios

