Feature: Welcoming page
	In order to inform new users regarding their possible actions
	People should be able to
	Read a list of possible actions
	
Scenario: Show welcome message
	When I go to the home page
	Then I should see "Hello there!"
	