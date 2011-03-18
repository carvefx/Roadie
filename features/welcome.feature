Feature: Welcoming page
	In order to inform new users regarding their possible actions
	People should be able to
	Read a list of possible actions
	
Scenario: Displaying a welcome message
	When I go to the home page
	Then I should see "Hello there!"
	
Scenario: Going to the calculate points page
	When I go to the home page
	And I follow "Calculate points"
	Then I should see "Point calculation"