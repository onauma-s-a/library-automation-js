@lib-08
Feature: Total Amount of Users, Books, and Borrowed Books

    As an admin, I want to see the total amount of users, books, and borrowed books on the "Dashboard" page. 

    #* AC1: Admin should see the total number of users and the “Users” text. 
    #* AC2: Admin should see the total number of books and the “Books” text. 
    #* AC3: Admin should see the total number of borrowed books and the “Borrowed Books” text. 

    Background:
    Given admin has logged into account 

    # TODO: Verify admins see the total number of users and the “Users” text.
    Scenario Outline: Verify admins can see the total number of users and the "Users" text
     When admin access to the "Dashboard" page
     Then admin should see the total number of users on the user session
     And admin should see the "Users" text under the total number of users
    

    # TODO: Verify admins see the total number of books and the “Books” text.
    Scenario Outline: Verify admins can see the total number of books and the "Books" text
     When admin access to the "Dashboard" page
     Then admin should see the total number of books on the books session
     And admin should see the "Books" text under the total number of books
    

    # TODO: Verify admins see the total number of borrowed books and the “Borrowed Books” text.
    Scenario Outline: Verify admins can see the total number of borrowed books and the "Borrowed Books" text
     When admin access to the "Dashboard" page
     Then admin should see the total number of borrowed books on the borrowed books session
     And admin should see the "Borrowed Books" text under the total number of borrowed books
    
    
    #? Should there be more scenarios for this user story? Feel free to add more scenarios.