Feature: Test user authentication
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url baseUrl
    * print baseUrl

  Scenario Outline: login user
    Given path '/login/<username>/<password>/'
    When method get
    Then status 200
    And match response contains {message:'<message>'}
    # save a response cookie for later use
    * def PHPSESSID = responseCookies.PHPSESSID

    Examples:
    |username|password| message |
    |demo|pass| successfully authenticated |
    |invalid|pass| This user does not exist. |
    |demo|invalid| Login failed, incorrect password |