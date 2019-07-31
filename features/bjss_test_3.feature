Feature: BJSS Test 3

  @test_3
  Scenario: The user sends a post request and confirms an entry has been created
    Given the user creates a new entry for "Michael Kyle", aged "40" with a salary of "20000"
    When the user sends a request to "http://dummy.restapiexample.com/api/v1/" via the "create" route
    Then the user verifies that the response indicates a new user was made
