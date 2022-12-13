Feature: Add new group

  Scenario Outline: Add new group
  Given User open whatsapp desktop
  When the whatsapp is logged in
  And User click icon menu on the top left corner of the page
  And User click add new group
  And User fill search keyword "<ContactName>"
  And User select contact
  And User click button next step
  And User fill "<SubjectGroup>"
  And User click button done
  Then Successfully added a new group
  Examples:
  |ContactName|SubjectGroup|
  |Ririn      |datasaur group|