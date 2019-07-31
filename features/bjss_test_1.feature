Feature: BJSS Test 1

  @test_1
  Scenario: The user can confirm that the blue, red, and green button IDs change after the red button is pressed.
    Given the user navigates to "https://the-internet.herokuapp.com/"
    When the user clicks "Challenging DOM"
    And the user stores the IDs of the buttons
    And the user clicks the red button
    Then the user confirms that the IDs of the buttons have changed
