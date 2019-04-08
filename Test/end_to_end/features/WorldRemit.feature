@All
Feature: World Remit Send Money

  Scenario: verify_send_money
    Given I navigate to world Remit home page
    When I select country 'Philippines' and start the money sending process
    Then I should see the Online Money Transfer Page
    When I select the serive type as 'Cash Pickup'
    Then I should see the Payout Networks
    When I select the Payout Network as 'MLhuillier'
    Then I should see the Input Row
    When I select the Role Method as 'Send'
    Then I should see the Home currency is selected
    When I set the Amount as 100
    Then I should see the calculato
