Feature: Search chat

 Scenario Outline: Search chat on the main page
  Given User open whatsapp desktop
  When The whatsapp is logged in
  And User click search field
  And User fill keyword "<TextSearch>"
  And User select the message you are looking for
  Then User successfully seacrh chat"
  Examples:
  |TextSearch|
  |text search|


Feature: Search chat

  Scenario Outline: Search chat on the detail message page
  Given User open whatsapp desktop
  When The whatsapp is logged in
  And User select the message you are looking for
  And User click icon search on the top right corner of the page message
  And User fill keyword "<TextSearch>"
  And User select the message you are looking for
  Then User success to search chat
  Examples:
    |TextSearch|
    |text search|