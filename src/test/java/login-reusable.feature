Feature: Test user authentication
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url baseUrl
    * print baseUrl

  Scenario: login user
    * def login_path = '/login/' + username + '/' + password  + '/'
    * print login_path
    Given path login_path
    When method get
    Then status 200
    And match response contains {message:'successfully authenticated'}
    # save a response cookie for later use
    * def PHPSESSID = responseCookies.PHPSESSID
