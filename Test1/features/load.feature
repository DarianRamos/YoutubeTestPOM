Feature: Loads Youtube web correctly without login.

 Scenario: I open and see correctly YT in Maximize window.
   Given I try load youtube page in Maximize window validation
   When Logo loads correctly
    And Search input loads correctly
    And Search button loads correctly
    And Suggested videos loads correctly
    And Menu loads correctly
   Then Logo displayed correctly
    And Search input displayed correctly
    And Search button displayed correctly
    And Suggested videos displayed correctly
    And Menu displayed correctly


