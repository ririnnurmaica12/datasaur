Feature: Spacex API

  Scenario Outline: Get CEO of Spacex
    When setting "<URL>" API spacex
    And set body query and contentType "<type>" and "<path>"
    Then Expected result <statusCode> and body "<data>" create user

    Examples:
    |URL|type|path|statusCode|data|
    |https://api.spacex.land |application/json|/graphql|200|Elon Musk|