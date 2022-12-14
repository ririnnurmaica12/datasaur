Feature: Add new community

  Scenario Outline: Add new community form existing group
  Given User open whatsapp desktop
  When the whatsapp is logged in
  And User click icon menu on the top left corner of the page
  And User click add new community
  And User fill name and description community
  And User click button next
  And User select existing group
  And User fill search keyword "<GroupName>"
  And User select group
  And User click button done
  Then Successfully added a new community
  Examples:
  |GroupName|
  |datasaur group|

  Scenario Outline: Add new community form new group
  Given User open whatsapp desktop
  When the whatsapp is logged in
  And User click icon menu on the top left corner of the page
  And User click add new community
  And User fill name and description community
  And User click button next
  And User select new group
  And User fill "<GroupName>"
  And User click button done create new group
  And User click button done create new community
  Then Successfully added a new community
  Examples:
    |GroupName|
    |datasaur group|