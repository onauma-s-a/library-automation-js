@lib-03
Feature: Book Categories

    As a user, I want to see 23 book categories, so I can filter my favorite books.

    #* AC: users should see 23 book categories When users click the Book Categories drop down 
    #*      ALL, Action and Adventure, Anthology, Classic, Comic and Graphic Novel, Crime and Detective, Drama
    #*      , Fable, Fairy Tale, Fan-Fiction, Fantasy, Historical Fiction, Horror, Science Fiction, Humor
    #*      , Biography/Autobiography ,Romance, Short Story, Essay, Memoir, Poetry, Thrillers, Young adults           


    # TODO: verify users see 23 book categories      

    Scenario Outline: Verify users should see the list of 23 book categories on drop down list
        Given user is already logged in as '<user-type>'
        When user click on the "Books" module
        And user click on the "Book Categories" drop down list
        Then user should see 23 book categories
    Examples:
        | user-type |
        | admin     |
        | student   | 
    
    #? Should there be more scenarios for this user story? Feel free to add more scenarios.