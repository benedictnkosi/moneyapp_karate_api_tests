Feature: Test user authentication
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url baseUrl
    * def result = callonce read('classpath:login-reusable.feature') { username: 'demo', password: 'pass' }


  Scenario: get user by active session
    Given path '/getuser/'
    * cookie PHPSESSID = $result.PHPSESSID
    When method get
    Then status 200
    And match response contains {username:'Demo'}
    * print response
