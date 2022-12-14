Feature: Send Message
  Scenario Outline: Send text message for new chat
    Given User open whatsapp desktop
    When the whatsapp is logged in
    And User click icon new chat
    And User fill search keyword "<ContactName>"
    And User select the contact
    And User fill "<TextMessage>"
    And User click icon send
    Then User success send text message
    Examples:
      |ContactName|TextMessage|
      |Ririn      |send test datasour.ai from ririn nurmaica|


  Scenario Outline: Send attach document message for new chat
    Given User open whatsapp desktop
    When the whatsapp is logged in
    And User click icon new chat
    And User fill search keyword "<ContactName>"
    And User select the contact
    And User click icon attach
    And User click icon document
    And User select document from desktop
    And User fill "<TextMessage>"
    And User click icon send
    Then User success send attach document message
    Examples:
      |ContactName|TextMessage|
      |Ririn      |send test datasour.ai from ririn nurmaica|


  Scenario Outline: Send attach multiple document message for new chat
    Given User open whatsapp desktop
    When the whatsapp is logged in
    And User click icon new chat
    And User fill search keyword "<ContactName>"
    And User select the contact
    And User click icon attach
    And User click icon document
    And User select document from desktop
    And User click icon add file
    And User select document again from desktop
    And User fill "<TextMessage>"
    And User click icon send
    Then User success send attach multiple document message
    Examples:
      |ContactName|TextMessage|
      |Ririn      |send test datasour.ai from ririn nurmaica|


  Scenario Outline: Send image message for new chat
    Given User open whatsapp desktop
    When the whatsapp is logged in
    And User click icon new chat
    And User fill search keyword "<ContactName>"
    And User select the contact
    And User click icon attach
    And User click icon image
    And User select image from desktop
    And User fill "<TextMessage>"
    And User click icon send
    Then User success send image message
    Examples:
      |ContactName|TextMessage|
      |Ririn      |send test datasour.ai from ririn nurmaica|


  Scenario Outline: Send video message for new chat
    Given User open whatsapp desktop
    When the whatsapp is logged in
    And User click icon new chat
    And User fill search keyword "<ContactName>"
    And User select the contact
    And User click icon attach
    And User click icon image/video
    And User select video from desktop
    And User fill "<TextMessage>"
    Then User success send video message
    Examples:
      |ContactName|TextMessage|
      |Ririn      |send test datasour.ai from ririn nurmaica|


 Scenario Outline: Send contact message for new chat
    Given User open whatsapp desktop
    When the whatsapp is logged in
    And User click icon new chat
    And User fill search keyword "<ContactName>"
    And User select the contact
    And User click icon attach
    And User click icon contact
    And User search "<Contact>"
    And User select contact
    And User click icon send
    Then User success send contact message
   Examples:
     |ContactName|Contact|
     |Ririn      |nurmaica|


  Scenario Outline:Send image message by camera for new chat
    Given User open whatsapp desktop
    When the whatsapp is logged in
    And User click icon new chat
    And User fill search keyword "<ContactName>"
    And User select the contact
    And User click icon attach
    And User click icon camera
    And User take picture
    And User click icon send
    Then User success send image message by camera
    Examples:
      |ContactName|
      |Ririn      |


 Scenario Outline: Send voice message for new chat
    Given User open whatsapp desktop
    When the whatsapp is logged in
    And User click icon new chat
    And User fill search keyword "<ContactName>"
    And User select the contact
    And User click icon voice
    And User speak
    And User click icon send
    Then User success send voice message
    Examples:
     |ContactName|
     |Ririn      |


 Scenario Outline: Replay message
    Given User open whatsapp desktop
    When the whatsapp is logged in
    And User get new message
    And User open the message
    And User click icon menu on top right corner of the text message
    And User select replay
    And User fill "<TextMessage>"
    And User click icon send
    Then User success send replay
    Examples:
     |TextMessage|
     |Test datasaur Ririn|


  Scenario Outline: Send messages without an internet network
    Given User open whatsapp desktop
    When the whatsapp is logged in
    And User click icon new chat
    And User fill search keyword "<ContactName>"
    And User select the contact
    And User fill "<TextMessage>"
    And User click icon send
    Then User failed to send message
    Examples:
      |ContactName|TextMessage|
      |Ririn      |send test datasour.ai from ririn nurmaica|