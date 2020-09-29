Feature: Verify that the play/pause, next and volume buttons work correctly without login.
  Scenario: I directly open a video and check buttons in maximize window.
    Given I open a video with URL
    When I skip ads if exists
    Then I play and pause the video
    And I use next button
    And I use volume button