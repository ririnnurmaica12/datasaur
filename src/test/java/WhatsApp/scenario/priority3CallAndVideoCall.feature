Feature: Voice Call and Video Call

  Scenario Outline: Voice call
  Given User open whatsapp desktop
  When the whatsapp is logged in
  And User click icon new chat
  And User fill search keyword "<ContactName>"
  And User select contact
  And User click icon voice call on top right corner of the page message
  Then User waiting until get response from receiver
  Examples:
    |ContactName|
    |Ririn      |


  Scenario Outline: Video call
  Given User open whatsapp desktop
  When the whatsapp is logged in
  And User click icon new chat
  And User fill search keyword "<ContactName>"
  And User select contact
  And User click icon video call on the top right corner of the page message
  Then User waiting until get response from receiver
  Examples:
      |ContactName|
      |Ririn      |


 Scenario Outline: Voice call rejected
  Given User open whatsapp desktop
  When the whatsapp is logged in
  And User click icon new chat
  And User fill search keyword "<ContactName>"
  And User select contact
  And User click icon voice call on top right corner of the page message
  Then User get response rejected from receiver
  Examples:
    |ContactName|
    |Ririn      |


  Scenario Outline: Video call
  Given User open whatsapp desktop
  When the whatsapp is logged in
  And User click icon new chat
  And User fill search keyword "<ContactName>"
  And User select contact
  And User click icon video call on top right corner of the page message
  Then User get response reject from receiver
  Examples:
      |ContactName|
      |Ririn      |


  Scenario Outline: Call or Video call without an internet network
    Given User open whatsapp desktop
    When the whatsapp is logged in
    And User click icon new chat
    And User fill search keyword "<ContactName>"
    And User select contact
    And User click icon video call on top right corner of the page message
    Then User get response try to connecting
    Examples:
      |ContactName|
      |Ririn      |