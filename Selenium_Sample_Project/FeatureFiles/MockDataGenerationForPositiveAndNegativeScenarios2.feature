Feature: Form submission process
  @TC_UIF2A_Commerce_01
    #I am providing this scenario for positive case but I need from LLM negative scenario as well also data collection
    #LLM should provide me both scenarios postive and negative in generated code
    #Before generating code on this feature file above rules should be implemented while generating code
  Scenario: Verify user is able to perform positive and negative scenarios for form submission
    Given I launch the application in "chrome" browser
    When User navigate to "https://practice.expandtesting.com/form-validation"
    And User enter Contact Person Name
    #xpath to enter Contact Person Name: //*[@id="validationCustom01"]
    #generate list/set of data as mock data for both positive and negative scenarios for Contact Person Name in pages class
    And User enter Date
    #xpatch to enter Date: //*[@id="validationCustom05"]
    #Date Format is: 12/12/2000
    #generate list/set of data as mock data for both positive and negative scenarios for Date in pages class
    And User select any value in Payment Method dropDown
    #xpatch to click on dropDown: //*[@id="validationCustom04"]
    #generate list/set of data as mock data for both positive and negative scenarios for Payment Method in pages class
    And User enter valid Contact number
    #xpath to enter Contact number: //*[@id="validationCustom05"]
    #Contact number format is: 123-1234567
    #generate list/set of data as mock data for both positive and negative scenarios for Contact Number in pages class
    And user click on Register button
    #xpath to click on Register button: //*[@id="core"]/div/div/div/div/div/form/div[5]/button
    Then User close the browser
