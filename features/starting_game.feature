Feature: Starting the game
In order to play battleships
As a nostalgic player
I want to start a new game

Scenario: Registering
	Given I am on the homepage
	When I fill out my name
	And Press the "Submit" button
	Then I should be on the put place ships

Scenario: Placing Ship
	Given I am on the place ships page
	And I have placed my 5 ships on the board
	Then I will wait for player 2

