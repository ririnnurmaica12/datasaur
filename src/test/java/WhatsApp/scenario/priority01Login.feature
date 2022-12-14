Feature: Login
  Scenario: User success login whatsapp desktop
    Given User open whatsapp desktop
    When The whatsapp desktop is opened
    And User scan QR code from whatsapp APP using phone user
    Then User success login on the whatsapp desktop

  Scenario: User has logged in on WhatsApp desktop
    Given User reopen the whatsapp desktop that has been closed but the user has logged in
    When The whatsapp desktop is opened
    Then User do not need to login again

  Scenario: User will be login on the WhatsApp desktop but the QR code time out
    Given User open whatsapp desktop
    When The whatsapp desktop is opened
    And User scan QR code from whatsapp APP using phone user
    Then Show message please click here to reload the QR code
    And User scan again QR code from whatsapp APP using phone user
    Then User success login on the whatsapp desktop



