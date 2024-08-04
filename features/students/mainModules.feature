@lib-05
Feature: Main modules of the application

    As a student, I want to access to the main modules of the app.

    #* AC1: students should see 2 modules: Books, Borrowing Books
    #* AC2: students should be able to click on 2 modules: Books, Borrowing Books and navigate to their page


    # TODO: Verify students can see 2 main modules (Books and Borrowing Books)

    Background:
    Given student has logged into account 

    Scenario Outline: Verify user see "Books" and "Borrowing Books" modules on homepage
     When user access to the homepage
     Then user should see "Books" module
     And user shoud see "Borrowing Books" module

     
    # TODO: Verify students can click on 2 modules: Books, Borrowing Books and navigate to their page 

    Scenario Outline: Verify user can click on the "Books" module
      When user click on '<module-type>' module
      Then it should navigate to '<module-type>' page
      And user should see '<module-type>' page 
      Examples:
        | module-type     |
        | Books           |
        | Borrowing Books | 

    #? Should there be more scenarios for this user story? feel free to add more scenarios

