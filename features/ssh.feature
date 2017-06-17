Feature: SSH to the router
	Scenario: connect to the router
		Given that you have ssh client
		When you connect to the router IP
		Then you are logged in with root
