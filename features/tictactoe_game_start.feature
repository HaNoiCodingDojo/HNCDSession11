Feature: TicTacToe game start
    Scenario: game start
	Given Game hasn't start
	When Game start
	Then Board is clear
