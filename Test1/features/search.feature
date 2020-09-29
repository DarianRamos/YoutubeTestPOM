Feature: Open YT and carry out a search without login.
  Scenario: I open YT in Maximize window and carry out a search correctly.
    Given I open YT and maximize the window
    When I write a keyword in input field
    Then I click in search button
    And Check result