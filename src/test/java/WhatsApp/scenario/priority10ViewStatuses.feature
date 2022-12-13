Feature: View statuses

Scenario: User view statuses
Given User open whatsapp desktop
When the whatsapp is logged in
And User click icon status on the top left corner of the page
And Users select a status in the recent column to view statuses from friends
Then User success to view statuses