Feature: Bupa Signin
  @check_login_details
  Scenario: Inputting an incorrect username or password will produce
    Given I access the Bupa signin section of the Bupa webpage
    And I input an incorrect username
    And I input a incorrect password
    When I try to log in
    Then I recieve an error of not finding the account or session timed out
