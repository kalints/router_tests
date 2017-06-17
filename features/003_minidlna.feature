Feature: My DLNA server
        Scenario: Check my DLNA server
                Given I have ssh access to my router
                When I check the process list
                Then I see that the minidlna service is running
