@lib-04
Feature: Return Books Functionality

    As a student, I should be able to return the borrowed books on the "Borrowing Books" page.

    #! Acceptance Criteria are missing :(
    #* AC: Students should be able to return the books they borrowed on the Borrowing Books page by clicking Retun Book

    #TODO: Verify that the Return Book button is displayed on the Borrowing Books page for the book(s) students have borrowed

    #TODO: Verify that the books will be retunrd when the student clicks the Return Book button

    #TODO: Verify that the Return Book button of the book will be disabled after student returns the book

    Background:
        Given student has logged into account 
        And user is already on the "Borrowing Books" Page

    Scenario Outline: Verify user can click on "Return Book" button on actions field if the book is not return.
        When user click on "Return Book" button
        Then user should see pop-up message "The book has been returned" after clicked button
        And user should see the "Is Returned ?" field is updated as "RETURNED"