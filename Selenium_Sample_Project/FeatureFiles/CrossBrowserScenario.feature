Feature: Broken link validation
  @TC_UIF2A_Commerce_01
  Scenario Outline: Verify broken links on a web page
    Given I launch the application in "<browser>" browser
    When I navigate to "https://saucelabs.com/"
    And I closed the browser
    Examples:
      | browser  |
      | chrome   |
      | firefox  |
      | safari   |