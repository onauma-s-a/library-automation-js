@lib-10
Feature: Edit Books Functionality

    As an admin, I should be able to edit books on the "Books" page.

    #! Acceptance Criteria are missing :(
    #* AC: admin users should be able to edit or update book information on the "Books" page successfully


    #TODO: Analyze the user story and create acceptance criteria yourself!

    #TODO: Create scenarios that cover all the acceptance criteria

    Background:
    Given admin has logged into account
    And admin is already on "Books" page

    Scenario Outline: Verify admin can edit or update book information successfully
     When admin click on "Edit Book" button
     Then it should be navegate to "Edit Book Information" form
     When admin update new '<bookname>' on Book Name field
     And admin update new '<isbn>' on ISBN field
     And admin update new '<year>' on Year field
     And admin update new '<author>' on Author field
     And admin update new '<book-category-type>' on Book Category field
     And admin update new '<description>' on Description field
     And admin click the save changes button
     Then admin should see pop-up message "The user has been updated"
     And it should display the updated book information in the table  
     Examples:
         | bookname      | isbn             | year    | author          | book-category-type  | description         |   
         | Testeditbook  | 9791955555555    | 2024    | Tester Editor   | Drama               | Edit Test Function  | 