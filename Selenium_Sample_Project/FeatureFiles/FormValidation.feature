Feature: Form Validation
  @TC_UIF2A_Commerce_01
  Scenario: Verify error message of all fields when form submitted with empty fields
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
    Then User close the browser

  Scenario: Verify error message of Contact number field when alphabets entered in field
    Given I launch the application in "chrome" browser
    When User navigate to "https://practice.expandtesting.com/form-validation"
    And User enter Contact Person Name
    #xpath to enter Contact Person Name: //*[@id="validationCustom01"]
    And User enter Date
    #xpatch to enter Date: //*[@id="validationCustom05"]
    #Date Format is: 12/12/2000
    And User select any value in Payment Method dropDown
    #xpatch to click on dropDown: //*[@id="validationCustom04"]
    And User enter Contact number as alphabets
    #xpath to enter Contact number: //*[@id="validationCustom05"]
    #Contact number format is: 123-1234567
    And user click on Register button
    #xpath to click on Register button: //*[@id="core"]/div/div/div/div/div/form/div[5]/button
    Then User will wait and verify the error message "Please provide your Contact number." with Contact Number field
    #xpath to verify error message with Contact Name field: //*[@id="core"]/div/div/div/div/div/form/div[2]/div
    Then User will wait and verify the message "Looks good!" with Contact Name field
    #xpath to verify error message with Contact Name field: //*[@id="core"]/div/div/div/div/div/form/div[1]/div[2]
    Then User close the browser

  Scenario: Verify error message of Contact number field when incomplete number entered in field
    Given I launch the application in "chrome" browser
    When User navigate to "https://practice.expandtesting.com/form-validation"
    And User enter Contact Person Name
    #xpath to enter Contact Person Name: //*[@id="validationCustom01"]
    And User enter Date
    #xpatch to enter Date: //*[@id="validationCustom05"]
    #Date Format is: 12/12/2000
    And User select any value in Payment Method dropDown
    #xpatch to click on dropDown: //*[@id="validationCustom04"]
    And User enter incomplete Contact number
    #xpath to enter Contact number: //*[@id="validationCustom05"]
    #Contact number format is: 123-1234567
    And user click on Register button
    #xpath to click on Register button: //*[@id="core"]/div/div/div/div/div/form/div[5]/button
    Then User will wait and verify the error message "Please provide your Contact number." with Contact Number field
    #xpath to verify error message with Contact Name field: //*[@id="core"]/div/div/div/div/div/form/div[2]/div
    Then User will wait and verify the message "Looks good!" with Contact Name field
    #xpath to verify error message with Contact Name field: //*[@id="core"]/div/div/div/div/div/form/div[1]/div[2]
    Then User close the browser

  Scenario: Verify error message of Contact number field when number not entered as per format in field
    Given I launch the application in "chrome" browser
    When User navigate to "https://practice.expandtesting.com/form-validation"
    And User enter Contact Person Name
    #xpath to enter Contact Person Name: //*[@id="validationCustom01"]
    And User enter Date
    #xpatch to enter Date: //*[@id="validationCustom05"]
    #Date Format is: 12/12/2000
    And User select any value in Payment Method dropDown
    #xpatch to click on dropDown: //*[@id="validationCustom04"]
    And User enter Contact number not as per format
    #xpath to enter Contact number: //*[@id="validationCustom05"]
    #Contact number format is: 123-1234567
    And user click on Register button
    #xpath to click on Register button: //*[@id="core"]/div/div/div/div/div/form/div[5]/button
    Then User will wait and verify the error message "Please provide your Contact number." with Contact Number field
    #xpath to verify error message with Contact Name field: //*[@id="core"]/div/div/div/div/div/form/div[2]/div
    Then User will wait and verify the message "Looks good!" with Contact Name field
    #xpath to verify error message with Contact Name field: //*[@id="core"]/div/div/div/div/div/form/div[1]/div[2]
    Then User close the browser

  Scenario: Verify user is able to Submit Form
    Given I launch the application in "chrome" browser
    When User navigate to "https://practice.expandtesting.com/form-validation"
    And User enter Contact Person Name
    #xpath to enter Contact Person Name: //*[@id="validationCustom01"]
    And User enter Date
    #xpatch to enter Date: //*[@id="validationCustom05"]
    #Date Format is: 12/12/2000
    And User select any value in Payment Method dropDown
    #xpatch to click on dropDown: //*[@id="validationCustom04"]
    And User enter valid Contact number
    #xpath to enter Contact number: //*[@id="validationCustom05"]
    #Contact number format is: 123-1234567
    And user click on Register button
    #xpath to click on Register button: //*[@id="core"]/div/div/div/div/div/form/div[5]/button
    Then User will wait and verify the confirmation message "Form Confirmation page for Automation Testing Practice"
    #xpath to verify confirmation message: //*[@id="core"]/div/div/h1
    Then User close the browser


