Feature:Wikipedia

  Scenario Outline: CEO of SpaceX Stated by Wikipedia
    Given User open google chrome
    Then User click field search on wikipedia home
    And User fill keyword "<search>"
    And Expect result "<CEO>" of spacex

    Examples:
     |search       |CEO      |
     |CEO of SpaceX|Elon Musk|