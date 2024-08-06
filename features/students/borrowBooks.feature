@lib-06
Feature: Borrowing books

    As a student, I should be able to borrow books on the "Books" Page.

    #! Acceptance Criteria are missing :(
    #* AC1: The Borrow Book button is displayed in the books page
    #* AC2: The Borrow Book button should be disabled after user clicks it
    #* AC3: The Borrow Book button should be enabled for the books that the student can borrow
    #* AC4: The books student borrowed should be displayed in the Borrowing Books page


    # TODO: Verify that the Borrow Book Button is displayed on the Books page

    # TODO: Verify that the Borrow Book button is disabled if the book is already borrowed by a student

    # TODO: Verify that the Borrow Book button is enabled if the book is not borrowed by a student yet

    # TODO: Verify that the name of the student is displayed in the Borrowed By column once the student borrows the book

    # TODO: Verify that the book is displayed in the Borrowing Books page after the student click the Borrow Book button

    Background:
        Given student has logged into account
        And student is already on the "Books" Page

    Scenario Outline: Verify user can click on avaliable "Borrow Book" button on actions field
        When user click on the avaliable "Borrow Book" button
        Then user should see pop-up message "The book has been borrowed" after clicked button
        And user should see the "Borrowed By" field is updated as '<username>'
        Examples:
            | username | 
            | student  | 
