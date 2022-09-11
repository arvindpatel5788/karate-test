Feature: Call GET request


  Background:
    * url  "https://mockend.com/arvindpatel5788/karate-test"
  Scenario: get users
    Given path "/users"
    And header Content-Type = 'application/json'
    When method GET
    Then status 200
    