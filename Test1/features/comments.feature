Feature: Verify comments and related videos without login.
  Scenario: I directly open a video and check comments and related videos in maximize window.
    Given I open a video via URL
    When I scroll page
    Then I can see comments
    And I can see related videos