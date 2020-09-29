Feature: Videos can be reproduced without login.
  Scenario: I open YT and can reproduce a video
    Given I open YT for play video
    When I Open a random video
    Then I check reproduction