@lib-06
Feature: Borrowing books

    As a student, I should be able to borrow books on the "Books" Page.

    #! Acceptance Criteria are missing :(
    #* AC: student users should be able to click on "Borrow Books" button if it's avaliable.


    #TODO: Analyze the user story and create acceptance criteria yourself!

    #TODO: Create scenarios that cover all the acceptance criteria

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
