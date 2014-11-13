Feature: Starting the game
In order to play battleships
As a nostalgic player
I want to start a new game

Scenario: Registering
	Given I am on the homepage
	When I fill out my name
	And Press the "Submit" button
	Then I should be asked to place some ships


Scenario: Placing ships
	Given I have registered
	And I have entered ship coordinates
	And I have clicked the "Place Ships" button
	Then I should wait for another player to join

