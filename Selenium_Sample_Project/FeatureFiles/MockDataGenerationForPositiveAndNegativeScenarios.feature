Feature: Form submission process
  @TC_UIF2A_Commerce_01
    #I am providing this scenario for positive case but I need from LLM negative scenario as well also data collection
    #LLM should provide me both scenarios postive and negative in generated code
    #Before generating code on this feature file above rules should be implemented while generating code
  Scenario: Verify user is able to perform positive and negative scenarios for form submission
    Given I launch the application in "chrome" browser
    When User navigate to "https://practice.expandtesting.com/form-validation"
    And user will wait to be visible and clickable Register button
    #xpath to be visible and clickable Register button: //*[@id="core"]/div/div/div/div/div/form/div[5]/button
    And user click on Register button
    #xpath to click on Register button: //*[@id="core"]/div/div/div/div/div/form/div[5]/button
    Then User remove data from Contact Name field
    #xpath to clear Contanct Name field: //*[@id="validationCustom01"]
    Then User will wait and verify the error message "Please enter your Contact name." with Contact Name field
    #xpath to verify error message with Contact Name field: //*[@id="core"]/div/div/div/div/div/form/div[1]/div[2]
    Then User will wait and verify the error message "Please provide your Contact number." with Contact Number field
    #xpath to verify error message with Contact Name field: //*[@id="core"]/div/div/div/div/div/form/div[2]/div
    Then User will wait and verify the error message "Please provide valid Date." with PickUp Date field
    #xpath to verify error message with Contact Name field: //*[@id="core"]/div/div/div/div/div/form/div[3]/div
    Then User will wait and verify the error message "Please select the Paymeny Method." with Payment Method field
    #xpath to verify error message with Contact Name field: //*[@id="core"]/div/div/div/div/div/form/div[4]/div
    And User enter Contact Person Name
    #xpath to enter Contact Person Name: //*[@id="validationCustom01"]
    #generate list/set of data as mock data for both positive and negative scenarios for Contact Person Name in pages class
    #Use data  from set/collection of data
    And User enter Date
    #xpatch to enter Date: /html/body/main/div[3]/div[2]/div/div/div/div/div/form/div[3]/input
    #Date Format is: 12/12/2000
    #generate list/set of data as mock data for both positive and negative scenarios for Date in pages class
    #Use data  from set/collection of data
    And User select any value in Payment Method dropDown
    #xpatch to click on dropDown: //*[@id="validationCustom04"]
    #Use data  from set/collection of data
    And User enter Contact number as alphabets
    #xpath to enter Contact number: //*[@id="validationCustom05"]
    #Contact number format is: 123-1234567
    #generate list/set of data as mock data for both positive and negative scenarios for Contact Number in pages class
    #Use data  from set/collection of data
    And user click on Register button
    #xpath to click on Register button: //*[@id="core"]/div/div/div/div/div/form/div[5]/button
    Then User will wait and verify the error message "Please provide your Contact number." with Contact Number field
    #xpath to verify error message with Contact Number field: //*[@id="core"]/div/div/div/div/div/form/div[2]/div
    Then User will wait and verify the message "Looks good!" with Contact Name field
    #xpath to verify error message with Contact Name field: //*[@id="core"]/div/div/div/div/div/form/div[1]/div[1]
    And User clear or remove data in Contact number field
    #xpath to clear or remove data in Contact number: //*[@id="validationCustom05"]
    And User enter incomplete Contact number
    #xpath to enter Contact number: //*[@id="validationCustom05"]
    #Contact number format is: 123-1234567
    #Use data  from set/collection of data
    And user click on Register button
    #xpath to click on Register button: //*[@id="core"]/div/div/div/div/div/form/div[5]/button
    Then User will wait and verify the error message "Please provide your Contact number." with Contact Number field
    #xpath to verify error message with Contact Number field: //*[@id="core"]/div/div/div/div/div/form/div[2]/div
    Then User will wait and verify the message "Looks good!" with Contact Name field
    #xpath to verify error message with Contact Name field: //*[@id="core"]/div/div/div/div/div/form/div[1]/div[2]
    And User clear or remove data in Contact number field
    #xpath to clear or remove data in Contact number: //*[@id="validationCustom05"]
    And User enter Contact number not as per format
    #xpath to enter Contact number: //*[@id="validationCustom05"]
    #Contact number format is: 123-1234567
    #Use data  from set/collection of data
    And user click on Register button
    #xpath to click on Register button: //*[@id="core"]/div/div/div/div/div/form/div[5]/button
    Then User will wait and verify the error message "Please provide your Contact number." with Contact Number field
    #xpath to verify error message with Contact Number field: //*[@id="core"]/div/div/div/div/div/form/div[2]/div
    Then User will wait and verify the message "Looks good!" with Contact Name field
    #xpath to verify error message with Contact Name field: //*[@id="core"]/div/div/div/div/div/form/div[1]/div[2]
    And User clear or remove data in Contact number field
    #xpath to clear or remove data in Contact number: //*[@id="validationCustom05"]
    And User enter valid Contact number
    #xpath to enter Contact number: //*[@id="validationCustom05"]
    #Contact number format is: 123-1234567
    #Use data  from set/collection of data
    And user click on Register button
    #xpath to click on Register button: //*[@id="core"]/div/div/div/div/div/form/div[5]/button
    Then User close the browser
