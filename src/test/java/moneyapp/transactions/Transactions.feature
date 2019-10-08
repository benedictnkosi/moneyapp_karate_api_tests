Feature: Test the look up feature to get transaction names for the user
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url baseUrl

  Scenario Outline: get transaction names by user ID and category - <category>
    Given path '/gettransactionnames/<category>/<user_id>/'
    When method get
    Then status 200
    And match response contains { value: '#notnull', text: <expected_transaction> }
    * print response

    Examples:
      | user_id | category | expected_transaction |
      | 20  | income       | 'Salary & Wages'       |
      | 20 | Personal Expenses | Cellphone        |
      | 20 | Business Expenses | Rent |
      | 20 | Investments |  Bitcoin |
      | 20 | Loan Pay Down |  Home Loan Repayments |
