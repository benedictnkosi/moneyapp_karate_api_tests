Feature: Test the look up feature to get category names
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url baseUrl

  Scenario: get category names
    Given path '/getcategories/'
    When method get
    Then status 200
    And match response contains {"value":"Business Expenses","text":"Business Expenses"},{"value":"Income","text":"Income"},{"value":"Investments","text":"Investments"},{"value":"Loan Pay Down","text":"Loan Pay Down"},{"value":"Personal Expenses","text":"Personal Expenses"}
    * print response
