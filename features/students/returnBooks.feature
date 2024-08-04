@lib-04
Feature: Return Books Functionality

    As a student, I should be able to return the borrowed books on the "Borrowing Books" page.

    #! Acceptance Criteria are missing :(
    #* AC: student users should be able to click on "Return Book" button if the book is not return.

    #TODO: Analyze the user story and create acceptance criteria yourself!

    #TODO: Create scenarios that cover all the acceptance criteria

    Background:
        Given student has logged into account 
        And user is already on the "Borrowing Books" Page

    Scenario Outline: Verify user can click on "Return Book" button on actions field if the book is not return.
        When user click on "Return Book" button
        Then user should see pop-up message "The book has been returned" after clicked button
        And user should see the "Is Returned ?" field is updated as "RETURNED"