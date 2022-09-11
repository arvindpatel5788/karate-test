Feature: Call GET request


  Background:
    * url  "https://mockend.com/arvindpatel5788/karate-test"
  Scenario: get users
    Given path "/users"
    And header Content-Type = 'application/json'
    When method GET
    Then status 200

  Scenario: add user
    Given path "/users"
    And header Content-Type = "application/json"
    And request {"name": "alice"}
    When method post
    Then status 201

Scenario: get graphqa
    Given path "/graphql"
    And header Content-Type = 'application/json'
    When method GET
    Then status 200