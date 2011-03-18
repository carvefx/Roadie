Feature: Calculate points
	In order to design a simple road
	People should be able to
	Process information in and add it to the database
	
Scenario: Adding data
	When I go to the home page
	And I follow "Add data"
	Then I should see "New point"
	And I fill in "Name" with "A"
	And I fill in "Distance" with "67.5"
	And I fill in "Elevation" with "325.22"
	And I fill in "D1" with "25.60"
	And I fill in "D2" with "80.04"
	And I fill in "Section" with "1"
	And I press "Create Point"
	Then I should see "Point added"
	
