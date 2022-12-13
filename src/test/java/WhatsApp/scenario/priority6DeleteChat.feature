Feature: Delete Chat

  Scenario: Delete chat on the main page
  Given User open whatsapp desktop
  When The whatsapp is logged in
  And User select the message you are looking for
  And User click icon menu on the list message
  And User click delete message
  And User click button continue
  Then User success delete chat


Feature: Delete Chat

  Scenario: Delete chat on the detail message page
  Given User open whatsapp desktop
  When The whatsapp is logged in
  And User select the message you are looking for
  And User click icon menu on the list message
  And User click delete chat
  And User click button continue
  Then User successfully delete chat