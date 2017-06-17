Feature: Check filesystems mounted on the router
        Scenario: Check NAS mount
                Given I have ssh access to my router
                When I check /mnt
                Then I see that the NAS is mounted there
