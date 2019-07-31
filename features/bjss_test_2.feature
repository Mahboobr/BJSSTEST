Feature: BJSS Test 2

  @test_2
  Scenario: The user can confirm that "Hello World!" appears after a loading bar disappears
    Given the user navigates to "https://the-internet.herokuapp.com/"
    When the user clicks "Dynamic Loading"
    And the user clicks "Example 2: Element rendered after the fact"
    And the user clicks the button "Start"
    And the user waits for the loading bar to disappear
    Then the user confirms "Hello World!" has appeared on the page
