Feature: Form submission process
  @TC_UIF2A_Commerce_01
  Scenario Outline: User executes the form submission workflow
    Given the user launches the application in a selected browser "<Browser>"
    When the user navigates to the target page "https://practice.expandtesting.com/form-validation"
    And the user provides the contact person name using "<ContactNameLocator>"
    #xpath to enter Contact Person Name: //*[@id="validationCustom01"]
    And the user provides the date using "<DateLocator>"
    #xpatch to enter Date: //*[@id="validationCustom05"]
    #Date Format is: 12/12/2000
    And the user selects a value in the payment method dropdown using "<PaymentMethodLocator>"
    #xpatch to click on payment method dropDown: //*[@id="validationCustom04"]
    And the user provides the contact number using "<ContactNumberLocator>"
    #xpath to enter Contact number: //*[@id="validationCustom05"]
    #Contact number format is: 123-1234567
    And the user submits the form using "<SubmitButtonLocator>"
    #xpath to click on submit button: //*[@id="core"]/div/div/div/div/div/form/div[5]/button
    Then the user verifies the confirmation message "<ExpectedMessage>" using "<MessageLocator>"
    And the user closes the browser

    Examples:
      | Browser     | ContactNameLocator     | DateLocator     | PaymentMethodLocator     | ContactNumberLocator     | SubmitButtonLocator     | ExpectedMessage     | MessageLocator     |
      | <Browser>   | <ContactNameLocator>   | <DateLocator>   | <PaymentMethodLocator>   | <ContactNumberLocator>   | <SubmitButtonLocator>   | <ExpectedMessage>   | <MessageLocator>   |
    #Generate list/set of data with positive and negative data combinations
