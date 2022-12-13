Feature: Logout

  Scenario: User logout from whatsapp desktop
  Given User open whatsapp desktop
  When the whatsapp is logged in
  And User click icon menu on the top left corner of the page
  And User click logout
  And User click button popup logout
  Then The whatsapp direct to main page